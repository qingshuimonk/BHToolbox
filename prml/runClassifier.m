function [decStat, classifier] = runClassifier(features, classifier, varargin)

[type, k, addFlag] = process_options(varargin, 'type', 'knn', 'k', 1, 'keepDat', 0);

if strcmp(type, 'knn')
    [decStat,classifier] = runKNN(features, classifier, 'k', k);
end

if addFlag
    classifier.test = features;
    classifier.decStat = decStat;
end

end