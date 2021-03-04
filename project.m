clear variables

%Initialisatioon des données du Sudoku

Initial=[7, 0, 3, 0, 0, 0, 0, 5, 8
    4, 0, 0, 0, 6, 8, 1, 0, 0
    8, 6, 0, 7, 0, 0, 0, 0, 0
    0, 0, 4, 0, 2, 0, 7, 9, 6
    0, 0, 8, 0, 0, 6, 2, 0, 0
    0, 9, 0, 0, 7, 1, 0, 0, 4
    0, 3, 6, 0, 0, 0, 0, 0, 9
    1, 4, 0, 6, 0, 9, 0, 0, 2
    0, 0, 5, 0, 4, 0, 3, 0, 0];

Solution=[7, 2, 3, 9, 1,4, 6,5, 8
    4, 5, 9, 3, 6, 8, 1, 2, 7
    8, 6, 1, 7, 5, 2, 9, 4, 3
    5, 1, 4, 8, 2, 3, 7, 9, 6
    3, 7, 8, 4, 9, 6, 2, 1, 5
    6, 9, 2, 5, 7, 1, 8, 3, 4
    2, 3, 6, 1, 8, 5, 4, 7, 9
    1, 4, 7, 6, 3, 9, 5, 8, 2
    9, 8, 5, 2, 4, 7, 3, 6, 1];

%Création de la grille
S = 9;
x = [1 9];
y = [1 9];
GRID = zeros(S);

%Boucle qui crée une matrice GRID pour controler la couleur des cases
%(blanc ou gris)

for COLUMN = 1:S
    for ROW = 1:S
        if Initial(ROW,COLUMN) ~= 0
            GRID(ROW,COLUMN) = 1;
        end
    end
    
end

imagesc(x,y,GRID)
axis square
LOW = [1,1,1];
HIGH = [.9,.9,.9];
colormap([LOW;HIGH])
axis off

for COLUMN = 1:S
    for ROW = 1:S
        if Initial(ROW,COLUMN) ~= 0
            text(COLUMN,ROW,num2str(Solution(ROW,COLUMN)),'FontWeight','bold', 'FontSize', 20, 'HorizontalAlignment', 'center')
        end
        text(COLUMN,ROW,num2str(Solution(ROW,COLUMN)),'FontWeight','normal','FontSize', 20, 'HorizontalAlignment', 'center')
    end
    
end
