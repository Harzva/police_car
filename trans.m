function ans= trans(X,Y,format_T)

%this function transforms corresponding elements of data

%stored in Cartesian coordinates X,Y to polar coordinates

%angle TH and radius R.
R=(X.^2+Y.^2).^0.5;
TH_rad=atan(Y./X);
TH_dgree=TH_rad*180/pi;
if strcmp(format_T,'dgree')
ans=[TH_dgree,R];
elseif strcmp(format_T,'rad')
ans=[TH_rad,R];
end
