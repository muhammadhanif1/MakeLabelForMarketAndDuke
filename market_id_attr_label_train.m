clear;
load('market_train.mat');
load('market_attribute.mat')
txt  = fopen('train_id_attr.txt', 'wt');
for i = 1:995
    
    id = train_part1{i, 2};
    label = id - 1;

    fprintf(txt, '%s%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d%s%d\n',...
        train_part1{i,1}, ...
        ' ', label,...
        ' ', market_attribute.train.age(id),...
        ' ', market_attribute.train.backpack(id),...
        ' ', market_attribute.train.bag(id),...
        ' ', market_attribute.train.handbag(id),...
        ' ', market_attribute.train.downblack(id),...
        ' ', market_attribute.train.downblue(id),...
        ' ', market_attribute.train.downbrown(id),...
        ' ', market_attribute.train.downgray(id),...
        ' ', market_attribute.train.downgreen(id),...
        ' ', market_attribute.train.downpink(id),...
        ' ', market_attribute.train.downpurple(id),...
        ' ', market_attribute.train.downwhite(id),...
        ' ', market_attribute.train.downyellow(id),...
        ' ', market_attribute.train.upblack(id),...
        ' ', market_attribute.train.upblue(id),...
        ' ', market_attribute.train.upgreen(id),...
        ' ', market_attribute.train.upgray(id),...
        ' ', market_attribute.train.uppurple(id),...
        ' ', market_attribute.train.upred(id),...
        ' ', market_attribute.train.upwhite(id),...
        ' ', market_attribute.train.upyellow(id),...
        ' ', market_attribute.train.clothes(id),...
        ' ', market_attribute.train.down(id),...
        ' ', market_attribute.train.up(id),...
        ' ', market_attribute.train.hair(id),...
        ' ', market_attribute.train.hat(id),...
        ' ', market_attribute.train.gender(id));
    
end
fclose(txt);
