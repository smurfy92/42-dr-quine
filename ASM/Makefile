FLAG= -Wall -Werror -Wall
CG = \033[92m
CY =  \033[93m
CE = \033[0m
CB = \033[34m

SRC_C = Colleen/Colleen.s
SRC_G = Grace/Grace.s
SRC_S = Sully/Sully.s

OBJ_C = $(SRC_C:.s=.o)
OBJ_G = $(SRC_G:.s=.o)
OBJ_S = $(SRC_S:.s=.o)

all: start Colleen Grace Sully

Colleen: $(OBJ_C)
	@echo "$(CY)[QUINE] :$(CE) $(CG)Compiling Colleen ...$(CE)";
	@gcc $(OBJ_C) -o Colleen/Colleen

Grace: $(OBJ_G)
	@echo "$(CY)[QUINE] :$(CE) $(CG)Compiling Grace ...$(CE)";
	@gcc $(OBJ_G) -o Grace/Grace

Sully: $(OBJ_S)
	@echo "$(CY)[QUINE] :$(CE) $(CG)Compiling Sully ...$(CE)";
	@gcc $(OBJ_S) -o Sully/Sully

start:
	@echo "\n";
	@echo "			$(CG)       ::::::::  :::    ::::::::::::::::::    ::::::::::::: $(CE)";
	@echo "			$(CG)     :+:    :+: :+:    :+:    :+:    :+:+:   :+::+:         $(CE)";
	@echo "			$(CG)    +:+    +:+ +:+    +:+    +:+    :+:+:+  +:++:+          $(CE)";
	@echo "			$(CG)   +#+    +:+ +#+    +:+    +#+    +#+ +:+ +#++#++:++#      $(CE)";
	@echo "			$(CG)  +#+    +#+ +#+    +#+    +#+    +#+  +#+#+#+#+            $(CE)";
	@echo "			$(CG) #+#    #+# #+#    #+#    #+#    #+#   #+#+##+#             $(CE)";
	@echo "			$(CG)################### ##############    ##############       $(CE)";
	@echo "\n";


%.o: %.s
	@echo "$(CY)[QUINE] :$(CE) $(CG)Compiling $<$(CE)";
	@nasm -f macho64 $<

clean: start
	@echo "\033[K$(CY)[QUINE] :$(CE) $(CG)Cleaning object files$(CE)";
	@/bin/rm -rf $(OBJ_S) $(OBJ_G) $(OBJ_C)

fclean: clean
	@echo "\033[K$(CY)[QUINE] :$(CE) $(CG)Cleaning binary files$(CE)";
	@/bin/rm -rf Sully/Sully Colleen/Colleen Grace/Grace Sully/Sully_* Grace/Grace_kid.s

re: fclean all

.PHONY: all clean fclean re