%   问题分析
% 1. 判断第一个物品放或不放；
% 2. 判断下一个物品是放还是不放；M[i,c]=M[i-1,c] or M[i,c]= M[i-1,c-w(i)]+v(i)；
% 3. 重复2；
% 4. 找出这些物品。


clc;  %清除所有
clear all;%清除变量
close all;%关闭图片

Capacity=30;% 背包的容量
Weight= [5,8,3,2,6,6,5,4,7,5];% 物品的重量，其中0号位置不使用 。
Value= [2,4,7,7,3,6,3,5,4,6];% 物品对应的价钱，0号位置置为空。
NumberOfObject =length(Weight);% n为物品的个数
TransferMatrix=[];%定义状态转移矩阵
ObjectState=[];%背包里物品的状态

%1.判断第一个物品放或不放；
for FlagTemp=1:31
        if Weight(NumberOfObject)<FlagTemp
                TransferMatrix(NumberOfObject,FlagTemp)=Value(NumberOfObject) ;
        else
                TransferMatrix(NumberOfObject,FlagTemp)=0;
        end
end

%2.判断下一个物品是放还是不放；不放时：F[i,v]=F[i-1,v]；放时：F[i,v]=max{F[i-1,v],F[i-1,v-C_i]+w_i}；
%3.重复2.
for FlagTempExternal=NumberOfObject-1:-1:1
        for FlagTemp=1:31
                if FlagTemp<=Weight(FlagTempExternal)
                        TransferMatrix(FlagTempExternal,FlagTemp)=TransferMatrix(FlagTempExternal+1,FlagTemp);
                else
                        if TransferMatrix(FlagTempExternal+1,FlagTemp)>TransferMatrix(FlagTempExternal+1,FlagTemp-Weight(FlagTempExternal))+Value(FlagTempExternal)
                                TransferMatrix(FlagTempExternal,FlagTemp)=TransferMatrix(FlagTempExternal+1,FlagTemp);
                        else
                                TransferMatrix(FlagTempExternal,FlagTemp)=TransferMatrix(FlagTempExternal+1,FlagTemp-Weight(FlagTempExternal))+Value(FlagTempExternal);
                        end
                end
        end
end
TransferMatrix

%4.找出这些物品。

FlagTempExternal=Capacity;
for FlagTemp=1:NumberOfObject-1
        if TransferMatrix(FlagTemp,FlagTempExternal)==TransferMatrix(FlagTemp+1,FlagTempExternal)
                ObjectState(FlagTemp)=0;
        else
                ObjectState(FlagTemp)=1;
                FlagTempExternal=FlagTempExternal-Weight(FlagTemp);
        end
end
if TransferMatrix(NumberOfObject,FlagTempExternal)==0
        ObjectState(NumberOfObject)=0;
else
        ObjectState(NumberOfObject)=1;
        
end

ObjectState
value_best=zeros(1,length(Value))
weight_best=zeros(1,length(Weight))
for i=1:length(ObjectState)
    if ObjectState(i)==1
        value_best(i)=Value(i)
        weight_best(i)=Weight(i)
    end
end
value_best=sum(value_best)
weight_best=sum(weight_best)
selected_id=find(ObjectState==1)
disp('最优_转移矩阵:')
disp(TransferMatrix)
disp('最优解_selected  id:')
disp(selected_id)
disp('最优解_物品选择与否:')
disp(ObjectState)
disp('最优_物品总价值等于:')
disp(value_best)
disp('最优_背包中物品重量是：')
disp(weight_best)


