clear all
clc
tic
% x=[14418 11664 8118 9162 9630 7398 4716 6750 1602 3528 5616 2502 8118 1566 9144 9594 10332 7452 6534 5598 11574 6750 8064 10296 9162 2484 4644 6480 7380 3510 5022 1458 2106 5616 14544 1404 13302 2268 14040 14418 8460 8100 1314 9180 11376 2772 8478 9810 10242 6732 7380 8118 5040 5580 5238 6372 4518 4158 3888 3726 9846 3096 10242 5238 4104 1692 1224 4626 4104 4554 1728 5094 3042 4500 5058 4914 13050 9846 13266 4194 11142 3474 7434 9162 9972 10458 5616 8118 3042 5274 6372 1080 4050 1548 2394 4716 2196 4932 5292 4104 5130 2160 4986 4662 5508 5634 6408 7398 1566 5274 990 4968 2124 6390 8082 9162 7398 5562 5346 5886 4986 10008 9198 4590 5598 5994 5472 900 5004 1278 2088 4140 5292 5832 4338 9954 10422 8046 7416 6390 9180 5508 5616 5922 6678 6030 6984 9882 7452 6642 8316 6408 5868 7020 6840 5580 810 1242 3114 4140 4644 5166 6174 6552 7722 8262 1962 8802 7506 10152 7110 6840 7830 3186 4932 3438 3852 4104 5166 3312 4356 4644 5580 7110 7308 3168 3474 4950 5148 4500 4140 7848 630 7452 3456 5364 8352 3132 3798 4626 5976 6768 8118 4518 5166 5544 6516 4104 5058 7812 1818 4104 7308 7128 9162 6696 3456 3132 4608 8118 5022 6516 7074 6858 7740 9180 8082 10188 5004 6282 3114 3456 4590 4104 11970 11376 13068 7434 6336 7740 8262 9198 5526 6840 3294 3474 4122 4590 6012 6156 11304 6282 11952 5148 432 3294 13050 4086 3096 1674 8298 5184 5508 6030 7452 7722 5058 6840 6120 1638 5652 9198 5976 6390 306 4068 7452 6624 6876 8262 4986 6066 6408 5616 7416 6894 1854 5796 2178 6768 3960 5832 6624 7416 11880 12978 216 3798 8262 5832 6516 6642 7434 8748 10872 11880 12960]; 
% y=[8046 8010 7974 7992 7992 7956 7956 7956 7938 7902 7920 7902 7668 7650 7650 7650 7650 7596 7290 7254 7164 7146 7146 7182 7146 7110 7110 7128 7128 7110 7110 7092 7074 7110 7020 6984 6984 6858 6840 6840 6642 6606 6480 6318 6318 6282 6300 6300 6318 6282 6264 6282 6264 6246 6210 6210 6192 6084 6066 6012 5976 5958 5922 5886 5868 5832 5814 5814 5688 5634 5652 5634 5508 5508 5454 5346 5346 5292 5292 5238 5274 5238 5256 5256 5256 5238 5220 5220 5220 5202 5220 5202 5202 5184 5184 5184 5166 5184 5058 5004 4968 4950 4896 4878 4878 4860 4860 4842 4788 4788 4752 4680 4662 4662 4662 4662 4662 4608 4572 4554 4572 4446 4392 4356 4356 4356 4356 4338 4302 4266 4266 4284 4284 4284 4248 4230 4230 4104 4104 4086 4086 4068 4050 4050 4050 4050 4050 4032 3888 3852 3888 3852 3834 3852 3726 3780 3762 3744 3762 3744 3762 3780 3726 3690 3636 3654 3636 3618 3618 3618 3582 3546 3528 3366 3348 3330 3330 3348 3330 3348 3348 3330 3312 3276 3186 3186 3186 3186 3168 3150 3132 3132 3024 2988 2988 2952 2970 2916 2952 2934 2952 2952 2952 2934 2934 2916 2934 2916 2916 2898 2898 2808 2844 2844 2790 2754 2808 2772 2736 2736 2736 2718 2718 2664 2628 2664 2628 2628 2556 2538 2502 2502 2502 2484 2466 2448 2430 2376 2358 2340 2358 2340 2340 2322 2250 2250 2250 2250 2214 2142 2160 2142 2142 2124 2106 2070 2088 2070 2070 2016 1908 1908 1908 1890 1908 1890 1800 1728 1710 1656 1548 1494 1476 1404 1386 1386 1368 1332 1350 1314 1260 1278 1278 1278 1116 1062 1008 936 864 756 738 738 738 720 702 684 414 360 288 288 288 270 270 252 216 198 162];
% no_point=size(x,2);
% 
% start=[1 1 2 2 3 3 3 4 4 5 6 6 7 7 7 8 8 9 9 10 10 11 12 13 13 14 14 15 15 16 17 18 19 19 20 21 21 21 22 22 22 23 23 23 24 24 25 26 26 27 27 27 28 29 30 31 31 32 32 33 34 35 36 36 37 38 39 39 40 41 41 42 43 43 44 44 44 45 45 46 47 48 48 49 50 50 51 51 52 53 53 54 54 54 55 56 57 57 58 58 59 59 60 60 60 61 61 62 64 65 65 66 66 67 68 69 69 70 71 72 73 74 75 76 77 77 78 78 79 80 80 80 81 82 82 83 83 83 84 84 85 85 86 87 87 87 88 89 90 90 91 92 92 93 94 94 95 95 96 96 97 98 99 99 100 101 101 102 103 103 104 105 106 106 106 107 107 108 109 109 110 110 111 112 113 114 114 115 115 115 116 117 118 118 118 119 119 120 121 122 123 124 124 125 125 126 127 128 128 129 130 130 131 131 132 132 133 134 136 136 138 138 139 139 140 140 140 141 141 142 143 143 144 144 145 145 146 147 149 149 149 150 150 151 152 153 153 154 155 156 156 157 157 158 159 159 160 160 161 162 163 164 165 165 166 167 168 168 169 169 171 171 172 174 174 175 175 175 176 176 176 177 177 178 178 179 181 181 182 183 184 185 186 186 187 188 189 190 190 191 193 193 194 194 194 194 195 195 196 196 197 197 198 198 199 200 200 200 201 201 202 202 202 203 203 204 205 205 206 207 208 209 210 211 212 213 214 215 215 216 216 217 217 218 219 219 220 220 221 222 223 224 224 225 226 228 229 230 231 231 232 232 233 233 234 235 235 236 237 238 238 238 239 240 240 241 241 242 243 243 244 245 245 246 247 247 249 250 250 251 251 252 253 253 254 255 255 256 256 257 258 260 261 261 262 262 264 265 265 267 268 268 269 270 271 272 273 274 275 276 276 277 277 277 278 278 279 280 282 282 282 283 285 285 286 287 288 289 290 290 291 291 292 293 294 295 295 296 297 298 299 299 300 301 302 304 305 306];  
% terminal=[2 35 5 21 6 4 13 5 15 16 8 18 10 11 27 11 22 12 14 12 30 20 26 18 23 32 33 16 25 17 24 29 20 28 34 24 37 45 28 29 50 25 29 42 25 49 44 30 33 30 31 57 34 51 60 34 53 33 36 38 54 40 38 43 39 46 40 77 79 42 47 52 46 67 47 48 84 49 81 62 52 49 61 63 51 56 52 83 88 55 57 55 56 87 64 91 58 68 59 65 60 65 62 69 82 63 78 66 72 69 70 67 71 92 70 74 93 75 73 75 89 76 90 98 79 81 84 85 237 93 96 100 86 89 93 88 91 108 88 116 86 122 137 90 91 106 115 95 98 99 107 94 111 100 97 109 97 102 98 104 102 101 101 105 132 103 110 113 104 112 124 106 107 118 120 108 114 117 111 113 112 118 128 121 131 117 140 116 117 138 123 139 119 125 134 121 127 126 129 123 141 129 135 127 143 146 133 130 157 133 131 158 132 167 135 160 142 144 137 148 139 141 147 149 145 146 152 148 215 143 144 156 146 153 147 150 152 154 151 154 169 152 154 166 155 163 201 171 171 162 183 158 193 167 160 174 161 178 162 179 164 172 169 173 173 211 170 192 192 194 185 172 184 180 186 179 182 188 177 180 187 178 199 181 191 189 182 190 200 196 214 194 187 198 195 189 205 191 204 208 211 255 210 213 214 238 198 199 206 209 203 215 211 218 208 204 209 219 206 207 207 214 216 210 220 208 209 254 243 222 212 221 225 260 234 223 216 226 228 222 224 218 232 231 221 233 226 227 229 230 224 239 244 227 242 251 233 250 232 259 234 246 234 248 247 236 237 251 257 240 244 265 252 241 266 242 261 272 249 263 268 246 256 247 248 258 250 252 264 253 305 269 257 295 258 260 275 258 259 296 276 270 266 280 263 267 271 266 277 281 269 279 273 287 284 304 274 278 297 281 291 279 280 285 279 290 286 299 283 284 288 293 286 294 290 289 292 291 294 302 292 298 300 301 303 296 306 307 298 300 303 304 301 302 303 305 306 307];
% no_start=size(start,2);


sheet1 = xlsread('ditushuju.xls',1);
x = sheet1(:,2);%��ĺ�����
y = sheet1(:,3);%���������
no_point=size(x,1);

sheet2 = xlsread('ditushuju.xls',2);
start = sheet2(:,1);
terminal = sheet2(:,2);
no_start = size(start,1);


figure(1);
for i=1:no_point
     plot(x(i),y(i),'.');
     hold on;
end
%���ڵ�
toc
for i=1:no_point
 str_i=num2str(i);
 text(x(i)+10,y(i)+10,str_i);
 hold on;
end
%����ʶ

for  i=1:no_start
     j=start(i);
     k=terminal(i);       
     plot([x(j) x(k)],[y(j)  y(k)]) ;
     hold on;       
end
%����·

a=10^8*ones(no_point);


for k=1:no_start
    i=start(k);j=terminal(k);
    a(i,j)=sqrt((x(i)-x(j))^2+(y(i)-y(j))^2);
    a(j,i)=a(i,j);
end

for i=1:no_point 
    a(i,i)=0;
end

[d,r]=floyd(a)

c=zeros(307);
for i=1:307
    for j=1:307
        if d(i,j)<=2000
            c(i,j) = 1;
        end
    end
end

sum_c=sum(c);

[c_loc c_no]=max(sum_c)



        
