FasdUAS 1.101.10   ��   ��    k             l     ��  r       	  c     	 
  
 l     ��  I    ���� 
�� .sysostdfalis    ��� null��    �� ��
�� 
prmp  m       &  Step 1: Find Singularity's .app.   ��  ��    m    ��
�� 
TEXT 	 o      ���� 0 singularity_raw  ��        l    ��  r        n        1    ��
�� 
psxp  o    ���� 0 singularity_raw    o      ���� 0 singularity  ��        l    ��  r        c        l    ��  I   ���� 
�� .sysostflalis    ��� null��    ��  ��
�� 
prmp   m     ! ! w qStep 2: Pick the directory containing the music files (.ogg and .mp3) you want to play while running Singularity.   ��  ��    m    ��
�� 
TEXT  o      ���� 0 music_folder_raw  ��     " # " l   # $�� $ r    # % & % n    ! ' ( ' 1    !��
�� 
psxp ( o    ���� 0 music_folder_raw   & o      ���� 0 music_folder  ��   #  ) * ) l     ������  ��   *  + , + l  $ B -�� - r   $ B . / . I  $ >�� 0 1
�� .sysodlogaskr        TEXT 0 b   $ - 2 3 2 b   $ + 4 5 4 b   $ ) 6 7 6 b   $ ' 8 9 8 m   $ % : :  Importing music from:
    9 o   % &���� 0 music_folder   7 m   ' ( ; ; ! 
into Singularity .app at:
    5 o   ) *���� 0 singularity   3 m   + , < <  

Is this correct?    1 �� = >
�� 
btns = J   . 4 ? ?  @ A @ m   . / B B 	 Yes    A  C�� C m   / 2 D D  No   ��   > �� E��
�� 
dflt E m   7 8���� ��   / o      ���� 	0 ready  ��   ,  F G F l  C N H�� H r   C N I J I n   C J K L K 1   F J��
�� 
bhit L o   C F���� 	0 ready   J o      ���� 
0 answer  ��   G  M N M l     ������  ��   N  O�� O l  O � P�� P Z   O � Q R���� Q =  O V S T S o   O R���� 
0 answer   T m   R U U U 	 Yes    R k   Y � V V  W X W l  Y Y�� Y��   Y ( " Ensure the music subfolder exists    X  Z [ Z I  Y f�� \��
�� .sysoexecTEXT���     TEXT \ b   Y b ] ^ ] b   Y ^ _ ` _ m   Y \ a a  
mkdir -p '    ` o   \ ]���� 0 singularity   ^ m   ^ a b b  Contents/Resources/music'   ��   [  c d c r   g � e f e I  g }�� g h
�� .sysodlogaskr        TEXT g m   g j i i < 6Do you want to keep any music you've already imported?    h �� j k
�� 
btns j J   k s l l  m n m m   k n o o 
 Keep    n  p�� p m   n q q q  Discard   ��   k �� r��
�� 
dflt r m   v w���� ��   f o      ���� 0 
remove_old   d  s t s r   � � u v u n   � � w x w 1   � ���
�� 
bhit x o   � ����� 0 
remove_old   v o      ���� 
0 answer   t  y z y Z   � � { |���� { =  � � } ~ } o   � ����� 
0 answer   ~ m   � �    Discard    | k   � � � �  � � � l  � ��� ���   �   Discard old files    �  ��� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � m   � � � �  rm -rf '    � o   � ����� 0 singularity   � m   � � � � ! Contents/Resources/music/'*   ��  ��  ��  ��   z  � � � l  � ��� ���   �   Import new files    �  � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � m   � � � �  ls -C1 '    � o   � ����� 0 music_folder   � m   � � � � 7 1' || (echo 'No music files found.' 1>&2 && false)   ��   � o      ���� 0 files_copied   �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � �  cp -rp '    � o   � ����� 0 music_folder   � m   � � � � 
 '* '    � o   � ����� 0 singularity   � m   � � � � ( "Contents/Resources/music/' || true   ��   �  ��� � I  � ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � m   � � � � L FThe following music files and directories were successfully imported:
    � o   � ����� 0 files_copied   � �� ���
�� 
btns � J   � � � �  ��� � m   � � � �  OK   ��  ��  ��  ��  ��  ��  ��       �� � � � � � � � � � �����������������   � ��������������������������������
�� .aevtoappnull  �   � ****�� 0 singularity_raw  �� 0 singularity  �� 0 music_folder_raw  �� 0 music_folder  �� 	0 ready  �� 
0 answer  �� 0 
remove_old  �� 0 files_copied  ��  ��  ��  ��  ��  ��  ��   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �   � �   � �  " � �  + � �  F � �  O����  ��  ��   �   � *�� ���������� !������ : ; <�� B D����������~ U a b�} i o q�|  � � � ��{ � � � � �
�� 
prmp
�� .sysostdfalis    ��� null
�� 
TEXT�� 0 singularity_raw  
�� 
psxp�� 0 singularity  
�� .sysostflalis    ��� null�� 0 music_folder_raw  �� 0 music_folder  
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT�� 	0 ready  
� 
bhit�~ 
0 answer  
�} .sysoexecTEXT���     TEXT�| 0 
remove_old  �{ 0 files_copied  �� �*��l �&E�O��,E�O*��l �&E�O��,E�O��%�%�%�%��a lva la  E` O_ a ,E` O_ a   �a �%a %j Oa �a a lva ka  E` O_ a ,E` O_ a   a  �%a !%j Y hOa "�%a #%j E` $Oa %�%a &%�%a '%j Oa (_ $%�a )kvl Y h � � jMacintosh HD:Users:Didy:Desktop:Singularity:singularity-0.28:singularity-git:dist:Endgame Singularity.app:                   � � � � � / U s e r s / D i d y / D e s k t o p / S i n g u l a r i t y / s i n g u l a r i t y - 0 . 2 8 / s i n g u l a r i t y - g i t / d i s t / E n d g a m e   S i n g u l a r i t y . a p p / � { aMacintosh HD:Users:Didy:Desktop:Singularity:singularity-0.27:endgame-singularity-music-006:music:                   � � � � � / U s e r s / D i d y / D e s k t o p / S i n g u l a r i t y / s i n g u l a r i t y - 0 . 2 7 / e n d g a m e - s i n g u l a r i t y - m u s i c - 0 0 6 / m u s i c / � �z ��y
�z 
bhit � � � �  Y e s�y   � � � �  D i s c a r d � �x ��w
�x 
bhit�w   � � � � � A d v a n c e d   S i m u l a c r a . o g g  A w a k e n i n g . o g g  B y - P r o d u c t . o g g  C o h e r e n c e . o g g  D e p r e c a t i o n . o g g  I n e v i t a b l e . o g g  M e d i a   T h r e a t . o g g  l o s e  w i n��  ��  ��  ��  ��  ��  ��  ascr  ��ޭ