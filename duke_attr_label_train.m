clear;
load('duke_attribute.mat');
load('duke_train.mat');
sizen = size(train,1);
num = randperm(sizen);
trainf = train(num, :); 
txt  = fopen('duke_train_attr.txt', 'wt');

for i = 1: sizen
    
    label = trainf{i, 2};
    ct = label + 1;
    
    fprintf(txt, '%s%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d\n',...
        trainf{i,1}, ...
        ' ', duke_attribute.train.backpack(ct) -1,...
        ' ', duke_attribute.train.bag(ct) -1,...
        ' ', duke_attribute.train.handbag(ct) -1,...
        ' ', duke_attribute.train.boots(ct) -1,...
        ' ', duke_attribute.train.gender(ct) -1,...
        ' ', duke_attribute.train.hat(ct) -1,...
        ' ', duke_attribute.train.shoes(ct) -1,...
        ' ', duke_attribute.train.top(ct) -1,...
        ' ', duke_attribute.train.downblack(ct) -1,...
        ' ', duke_attribute.train.downwhite(ct) -1,...
        ' ', duke_attribute.train.downred(ct) -1,...
        ' ', duke_attribute.train.downgray(ct) -1,...
        ' ', duke_attribute.train.downblue(ct) -1,...
        ' ', duke_attribute.train.downgreen(ct) -1,...
        ' ', duke_attribute.train.downbrown(ct) -1,...
        ' ', duke_attribute.train.upblack(ct) -1,...
        ' ', duke_attribute.train.upwhite(ct) -1,...
        ' ', duke_attribute.train.upred(ct) -1,...
        ' ', duke_attribute.train.uppurple(ct) -1,...
        ' ', duke_attribute.train.upgray(ct) -1,...
        ' ', duke_attribute.train.upblue(ct) -1,...
        ' ', duke_attribute.train.upgreen(ct) -1,...
        ' ', duke_attribute.train.upbrown(ct) -1);
    
end
fclose(txt);
