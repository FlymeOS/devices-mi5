.class public Lorg/htmlparser/lexer/Lexer;
.super Ljava/lang/Object;
.source "Lexer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/htmlparser/b;


# static fields
.field public static btk:Z = false

.field protected static btl:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mCursor:Lorg/htmlparser/lexer/Cursor;

.field protected mFactory:Lorg/htmlparser/b;

.field protected mPage:Lorg/htmlparser/lexer/Page;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    sput-boolean v0, Lorg/htmlparser/lexer/Lexer;->btk:Z

    .line 132
    const/4 v0, -0x1

    sput v0, Lorg/htmlparser/lexer/Lexer;->btl:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 159
    new-instance v0, Lorg/htmlparser/lexer/Page;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/htmlparser/lexer/Page;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/htmlparser/lexer/Lexer;-><init>(Lorg/htmlparser/lexer/Page;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/lexer/Page;)V
    .locals 2

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-virtual {p0, p1}, Lorg/htmlparser/lexer/Lexer;->a(Lorg/htmlparser/lexer/Page;)V

    .line 169
    new-instance v0, Lorg/htmlparser/lexer/Cursor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/Lexer;->a(Lorg/htmlparser/lexer/Cursor;)V

    .line 170
    invoke-virtual {p0, p0}, Lorg/htmlparser/lexer/Lexer;->a(Lorg/htmlparser/b;)V

    .line 171
    return-void
.end method

.method private a(Ljava/util/Vector;[I)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v6, 0x0

    .line 916
    aget v0, p2, v3

    aget v1, p2, v6

    if-le v0, v1, :cond_0

    .line 917
    new-instance v0, Lorg/htmlparser/lexer/PageAttribute;

    .line 918
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    aget v4, p2, v6

    aget v5, p2, v3

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    .line 917
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 919
    :cond_0
    return-void
.end method

.method private b(Ljava/util/Vector;[I)V
    .locals 7

    .prologue
    const/4 v4, -0x1

    .line 928
    new-instance v0, Lorg/htmlparser/lexer/PageAttribute;

    .line 929
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v6, 0x0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    .line 928
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 930
    return-void
.end method

.method private c(Ljava/util/Vector;[I)V
    .locals 7

    .prologue
    const/4 v4, 0x2

    .line 939
    new-instance v0, Lorg/htmlparser/lexer/PageAttribute;

    .line 940
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    const/4 v2, 0x1

    aget v2, p2, v2

    aget v3, p2, v4

    aget v4, p2, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    .line 939
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 941
    return-void
.end method

.method private d(Ljava/util/Vector;[I)V
    .locals 7

    .prologue
    .line 950
    new-instance v0, Lorg/htmlparser/lexer/PageAttribute;

    .line 951
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x3

    aget v4, p2, v4

    .line 952
    const/4 v5, 0x4

    aget v5, p2, v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    .line 950
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 953
    return-void
.end method

.method private e(Ljava/util/Vector;[I)V
    .locals 7

    .prologue
    .line 962
    new-instance v0, Lorg/htmlparser/lexer/PageAttribute;

    .line 963
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x4

    aget v4, p2, v4

    add-int/lit8 v4, v4, 0x1

    .line 964
    const/4 v5, 0x5

    aget v5, p2, v5

    const/16 v6, 0x27

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    .line 962
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 965
    return-void
.end method

.method private f(Ljava/util/Vector;[I)V
    .locals 7

    .prologue
    .line 974
    new-instance v0, Lorg/htmlparser/lexer/PageAttribute;

    .line 975
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x5

    aget v4, p2, v4

    add-int/lit8 v4, v4, 0x1

    .line 976
    const/4 v5, 0x6

    aget v5, p2, v5

    const/16 v6, 0x22

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    .line 974
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 977
    return-void
.end method


# virtual methods
.method public NB()Lorg/htmlparser/lexer/Page;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    return-object v0
.end method

.method public NC()Lorg/htmlparser/lexer/Cursor;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    return-object v0
.end method

.method public ND()Lorg/htmlparser/b;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mFactory:Lorg/htmlparser/b;

    return-object v0
.end method

.method public NE()Lorg/htmlparser/a;
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/Lexer;->cX(Z)Lorg/htmlparser/a;

    move-result-object v0

    return-object v0
.end method

.method public NF()Lorg/htmlparser/a;
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/Lexer;->cY(Z)Lorg/htmlparser/a;

    move-result-object v0

    return-object v0
.end method

.method protected O(II)Lorg/htmlparser/a;
    .locals 2

    .prologue
    .line 898
    sub-int v0, p2, p1

    .line 899
    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->ND()Lorg/htmlparser/b;

    move-result-object v0

    .line 902
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    .line 901
    invoke-interface {v0, v1, p1, p2}, Lorg/htmlparser/b;->a(Lorg/htmlparser/lexer/Page;II)Lorg/htmlparser/e;

    move-result-object v0

    .line 906
    :goto_0
    return-object v0

    .line 904
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected P(II)Lorg/htmlparser/a;
    .locals 2

    .prologue
    .line 1379
    sub-int v0, p2, p1

    .line 1380
    if-eqz v0, :cond_1

    .line 1382
    const/4 v1, 0x2

    if-le v1, v0, :cond_0

    .line 1384
    invoke-virtual {p0, p1, p2}, Lorg/htmlparser/lexer/Lexer;->O(II)Lorg/htmlparser/a;

    move-result-object v0

    .line 1390
    :goto_0
    return-object v0

    .line 1385
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->ND()Lorg/htmlparser/b;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lorg/htmlparser/b;->b(Lorg/htmlparser/lexer/Page;II)Lorg/htmlparser/c;

    move-result-object v0

    goto :goto_0

    .line 1388
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(IILjava/util/Vector;)Lorg/htmlparser/a;
    .locals 2

    .prologue
    .line 1228
    sub-int v0, p2, p1

    .line 1229
    if-eqz v0, :cond_1

    .line 1231
    const/4 v1, 0x2

    if-le v1, v0, :cond_0

    .line 1233
    invoke-virtual {p0, p1, p2}, Lorg/htmlparser/lexer/Lexer;->O(II)Lorg/htmlparser/a;

    move-result-object v0

    .line 1239
    :goto_0
    return-object v0

    .line 1234
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->ND()Lorg/htmlparser/b;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/htmlparser/b;->a(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)Lorg/htmlparser/d;

    move-result-object v0

    goto :goto_0

    .line 1237
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)Lorg/htmlparser/d;
    .locals 1

    .prologue
    .line 669
    new-instance v0, Lorg/htmlparser/nodes/TagNode;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/htmlparser/nodes/TagNode;-><init>(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)V

    return-object v0
.end method

.method public a(Lorg/htmlparser/lexer/Page;II)Lorg/htmlparser/e;
    .locals 1

    .prologue
    .line 640
    new-instance v0, Lorg/htmlparser/nodes/TextNode;

    invoke-direct {v0, p1, p2, p3}, Lorg/htmlparser/nodes/TextNode;-><init>(Lorg/htmlparser/lexer/Page;II)V

    return-object v0
.end method

.method public a(Lorg/htmlparser/b;)V
    .locals 2

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "node factory cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    iput-object p1, p0, Lorg/htmlparser/lexer/Lexer;->mFactory:Lorg/htmlparser/b;

    .line 258
    return-void
.end method

.method public a(Lorg/htmlparser/lexer/Cursor;)V
    .locals 2

    .prologue
    .line 234
    if-nez p1, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cursor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    iput-object p1, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    .line 238
    return-void
.end method

.method public a(Lorg/htmlparser/lexer/Page;)V
    .locals 2

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "page cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    iput-object p1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    .line 217
    return-void
.end method

.method public b(Lorg/htmlparser/lexer/Page;II)Lorg/htmlparser/c;
    .locals 1

    .prologue
    .line 652
    new-instance v0, Lorg/htmlparser/nodes/RemarkNode;

    invoke-direct {v0, p1, p2, p3}, Lorg/htmlparser/nodes/RemarkNode;-><init>(Lorg/htmlparser/lexer/Page;II)V

    return-object v0
.end method

.method protected b(Lorg/htmlparser/lexer/Cursor;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 718
    move v0, v1

    move v3, v1

    .line 720
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 748
    return-void

    .line 722
    :cond_1
    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    invoke-virtual {v4, p1}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v4

    .line 723
    const v5, 0xffff

    if-ne v5, v4, :cond_2

    move v3, v2

    .line 724
    goto :goto_0

    .line 726
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 745
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 729
    :pswitch_0
    const/16 v5, 0x1b

    if-ne v5, v4, :cond_0

    move v0, v2

    .line 731
    goto :goto_0

    .line 733
    :pswitch_1
    const/16 v0, 0x28

    if-ne v0, v4, :cond_3

    .line 734
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 737
    goto :goto_0

    .line 739
    :pswitch_2
    const/16 v5, 0x42

    if-eq v5, v4, :cond_4

    const/16 v5, 0x4a

    if-eq v5, v4, :cond_4

    const/16 v5, 0x48

    if-eq v5, v4, :cond_4

    const/16 v5, 0x49

    if-ne v5, v4, :cond_5

    :cond_4
    move v3, v2

    .line 740
    goto :goto_0

    :cond_5
    move v0, v1

    .line 743
    goto :goto_0

    .line 726
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public cX(Z)Lorg/htmlparser/a;
    .locals 5

    .prologue
    const v4, 0xffff

    const/16 v3, 0x25

    .line 343
    const/4 v0, -0x1

    sget v1, Lorg/htmlparser/lexer/Lexer;->btl:I

    if-eq v0, v1, :cond_0

    .line 345
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->NB()Lorg/htmlparser/lexer/Page;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/Page;->e(Lorg/htmlparser/lexer/Cursor;)I

    move-result v0

    .line 347
    sget v1, Lorg/htmlparser/lexer/Lexer;->btl:I

    if-ge v1, v0, :cond_0

    .line 348
    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/htmlparser/lexer/Lexer;->btl:I

    .line 350
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v0

    .line 351
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v1, v2}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v1

    .line 352
    sparse-switch v1, :sswitch_data_0

    .line 405
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v1, v2}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    .line 406
    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/lexer/Lexer;->r(IZ)Lorg/htmlparser/a;

    move-result-object v0

    .line 410
    :goto_0
    return-object v0

    .line 355
    :sswitch_0
    const/4 v0, 0x0

    .line 356
    goto :goto_0

    .line 358
    :sswitch_1
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v1, v2}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v1

    .line 359
    if-ne v4, v1, :cond_1

    .line 360
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/htmlparser/lexer/Lexer;->O(II)Lorg/htmlparser/a;

    move-result-object v0

    goto :goto_0

    .line 361
    :cond_1
    if-ne v3, v1, :cond_2

    .line 363
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v1, v2}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    .line 364
    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/Lexer;->fG(I)Lorg/htmlparser/a;

    move-result-object v0

    goto :goto_0

    .line 366
    :cond_2
    const/16 v2, 0x3f

    if-ne v2, v1, :cond_3

    .line 368
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v1, v2}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    .line 369
    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/Lexer;->fH(I)Lorg/htmlparser/a;

    move-result-object v0

    goto :goto_0

    .line 371
    :cond_3
    const/16 v2, 0x2f

    if-eq v2, v1, :cond_4

    if-eq v3, v1, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 373
    :cond_4
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v1, v2}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    .line 374
    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/Lexer;->fF(I)Lorg/htmlparser/a;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_5
    const/16 v2, 0x21

    if-ne v2, v1, :cond_9

    .line 378
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v1, v2}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v1

    .line 379
    if-ne v4, v1, :cond_6

    .line 380
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/htmlparser/lexer/Lexer;->O(II)Lorg/htmlparser/a;

    move-result-object v0

    goto :goto_0

    .line 383
    :cond_6
    const/16 v2, 0x3e

    if-ne v2, v1, :cond_7

    .line 384
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/htmlparser/lexer/Lexer;->P(II)Lorg/htmlparser/a;

    move-result-object v0

    goto :goto_0

    .line 387
    :cond_7
    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v3}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    .line 388
    const/16 v2, 0x2d

    if-ne v2, v1, :cond_8

    .line 389
    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/lexer/Lexer;->s(IZ)Lorg/htmlparser/a;

    move-result-object v0

    goto/16 :goto_0

    .line 392
    :cond_8
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v1, v2}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    .line 393
    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/Lexer;->fF(I)Lorg/htmlparser/a;

    move-result-object v0

    goto/16 :goto_0

    .line 400
    :cond_9
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v1, v2}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    .line 401
    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/lexer/Lexer;->r(IZ)Lorg/htmlparser/a;

    move-result-object v0

    goto/16 :goto_0

    .line 352
    nop

    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_1
        0xffff -> :sswitch_0
    .end sparse-switch
.end method

.method public cY(Z)Lorg/htmlparser/a;
    .locals 13

    .prologue
    const/16 v12, 0x2a

    const/16 v11, 0x2d

    const v10, 0xffff

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 460
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v6

    move v0, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 466
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 622
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v0

    .line 624
    invoke-virtual {p0, v6, v0}, Lorg/htmlparser/lexer/Lexer;->O(II)Lorg/htmlparser/a;

    move-result-object v0

    return-object v0

    .line 468
    :cond_1
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v7

    .line 469
    packed-switch v5, :pswitch_data_0

    .line 619
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Somehow managed to get into invalid state  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :pswitch_0
    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 532
    goto :goto_0

    :sswitch_1
    move v4, v2

    .line 476
    goto :goto_0

    .line 478
    :sswitch_2
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 479
    if-nez v3, :cond_2

    .line 480
    const/16 v3, 0x27

    goto :goto_0

    .line 481
    :cond_2
    const/16 v7, 0x27

    if-ne v7, v3, :cond_0

    move v3, v1

    .line 483
    goto :goto_0

    .line 485
    :sswitch_3
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 486
    if-nez v3, :cond_3

    .line 487
    const/16 v3, 0x22

    goto :goto_0

    .line 488
    :cond_3
    const/16 v7, 0x22

    if-ne v7, v3, :cond_0

    move v3, v1

    .line 490
    goto :goto_0

    .line 492
    :sswitch_4
    if-eqz p1, :cond_0

    .line 493
    if-eqz v3, :cond_0

    .line 495
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v7

    .line 496
    if-ne v10, v7, :cond_4

    move v4, v2

    .line 497
    goto :goto_0

    .line 498
    :cond_4
    const/16 v8, 0x5c

    if-eq v7, v8, :cond_0

    if-eq v7, v3, :cond_0

    .line 500
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    goto :goto_0

    .line 504
    :sswitch_5
    if-eqz p1, :cond_0

    .line 505
    if-nez v3, :cond_0

    .line 508
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v7

    .line 509
    if-ne v10, v7, :cond_5

    move v4, v2

    .line 510
    goto :goto_0

    .line 511
    :cond_5
    const/16 v8, 0x2f

    if-ne v8, v7, :cond_6

    move v0, v2

    .line 512
    goto/16 :goto_0

    .line 513
    :cond_6
    if-ne v12, v7, :cond_a

    .line 518
    :cond_7
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v7

    .line 519
    if-eq v10, v7, :cond_8

    if-ne v12, v7, :cond_7

    .line 520
    :cond_8
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v7

    .line 521
    if-ne v7, v12, :cond_9

    .line 522
    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v9, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v8, v9}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    .line 524
    :cond_9
    if-eq v10, v7, :cond_0

    const/16 v8, 0x2f

    if-ne v8, v7, :cond_7

    goto/16 :goto_0

    .line 527
    :cond_a
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    goto/16 :goto_0

    .line 534
    :sswitch_6
    if-eqz p1, :cond_b

    .line 536
    if-nez v3, :cond_0

    move v5, v2

    .line 538
    goto/16 :goto_0

    :cond_b
    move v5, v2

    .line 541
    goto/16 :goto_0

    .line 547
    :pswitch_1
    sparse-switch v7, :sswitch_data_1

    move v5, v1

    .line 576
    goto/16 :goto_0

    :sswitch_7
    move v4, v2

    .line 551
    goto/16 :goto_0

    .line 553
    :sswitch_8
    const/4 v5, 0x2

    .line 554
    goto/16 :goto_0

    .line 556
    :sswitch_9
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v7

    .line 557
    if-ne v10, v7, :cond_c

    move v4, v2

    .line 558
    goto/16 :goto_0

    .line 559
    :cond_c
    if-ne v11, v7, :cond_f

    .line 561
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v7

    .line 562
    if-ne v10, v7, :cond_d

    move v4, v2

    .line 563
    goto/16 :goto_0

    .line 564
    :cond_d
    if-ne v11, v7, :cond_e

    .line 565
    const/4 v5, 0x3

    goto/16 :goto_0

    :cond_e
    move v5, v1

    .line 568
    goto/16 :goto_0

    :cond_f
    move v5, v1

    .line 571
    goto/16 :goto_0

    .line 579
    :pswitch_2
    if-ne v10, v7, :cond_10

    move v0, v1

    move v4, v2

    .line 580
    goto/16 :goto_0

    .line 581
    :cond_10
    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 585
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0, v4}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    .line 586
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0, v4}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    .line 587
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0, v4}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    move v0, v1

    move v4, v2

    .line 588
    goto/16 :goto_0

    :cond_11
    move v0, v1

    move v5, v1

    .line 591
    goto/16 :goto_0

    .line 594
    :pswitch_3
    if-ne v10, v7, :cond_12

    move v0, v1

    move v4, v2

    .line 595
    goto/16 :goto_0

    .line 596
    :cond_12
    if-ne v11, v7, :cond_17

    .line 598
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0, v7}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 599
    if-ne v10, v0, :cond_13

    move v0, v1

    move v4, v2

    .line 600
    goto/16 :goto_0

    .line 601
    :cond_13
    if-ne v11, v0, :cond_16

    .line 603
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0, v7}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 604
    if-ne v10, v0, :cond_14

    move v0, v1

    move v4, v2

    .line 605
    goto/16 :goto_0

    .line 606
    :cond_14
    const/16 v7, 0x3e

    if-ne v7, v0, :cond_15

    move v0, v1

    move v5, v1

    .line 607
    goto/16 :goto_0

    .line 610
    :cond_15
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0, v7}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    .line 611
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0, v7}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    move v0, v1

    .line 613
    goto/16 :goto_0

    .line 615
    :cond_16
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0, v7}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    move v0, v1

    .line 617
    goto/16 :goto_0

    :cond_17
    move v0, v1

    goto/16 :goto_0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 472
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
        0x2f -> :sswitch_5
        0x3c -> :sswitch_6
        0x5c -> :sswitch_4
        0xffff -> :sswitch_1
    .end sparse-switch

    .line 547
    :sswitch_data_1
    .sparse-switch
        0x21 -> :sswitch_9
        0x2f -> :sswitch_8
        0xffff -> :sswitch_7
    .end sparse-switch
.end method

.method protected fF(I)Lorg/htmlparser/a;
    .locals 11

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x6

    const v10, 0xffff

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1054
    .line 1055
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1057
    const/16 v0, 0x8

    new-array v7, v0, [I

    .line 1058
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v0

    aput v0, v7, v1

    move v0, v1

    move v5, v1

    .line 1059
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 1210
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0, v6}, Lorg/htmlparser/lexer/Lexer;->a(IILjava/util/Vector;)Lorg/htmlparser/a;

    move-result-object v0

    return-object v0

    .line 1061
    :cond_1
    add-int/lit8 v8, v0, 0x1

    iget-object v9, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v9}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v9

    aput v9, v7, v8

    .line 1062
    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v9, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v8, v9}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v8

    .line 1063
    packed-switch v0, :pswitch_data_0

    .line 1206
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Somehow managed to get into invalid state  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1066
    :pswitch_0
    if-eq v10, v8, :cond_2

    const/16 v9, 0x3e

    if-eq v9, v8, :cond_2

    const/16 v9, 0x3c

    if-ne v9, v8, :cond_4

    .line 1068
    :cond_2
    const/16 v5, 0x3c

    if-ne v5, v8, :cond_3

    .line 1071
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5, v8}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    .line 1072
    add-int/lit8 v5, v0, 0x1

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v8}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v8

    aput v8, v7, v5

    .line 1074
    :cond_3
    invoke-direct {p0, v6, v7}, Lorg/htmlparser/lexer/Lexer;->a(Ljava/util/Vector;[I)V

    move v5, v2

    .line 1076
    goto :goto_0

    .line 1077
    :cond_4
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1079
    invoke-direct {p0, v6, v7}, Lorg/htmlparser/lexer/Lexer;->a(Ljava/util/Vector;[I)V

    move v0, v2

    .line 1082
    goto :goto_0

    .line 1084
    :pswitch_1
    if-eq v10, v8, :cond_5

    const/16 v9, 0x3e

    if-eq v9, v8, :cond_5

    const/16 v9, 0x3c

    if-ne v9, v8, :cond_7

    .line 1086
    :cond_5
    const/16 v5, 0x3c

    if-ne v5, v8, :cond_6

    .line 1089
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5, v8}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    .line 1090
    add-int/lit8 v5, v0, 0x1

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v8}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v8

    aput v8, v7, v5

    .line 1092
    :cond_6
    invoke-direct {p0, v6, v7}, Lorg/htmlparser/lexer/Lexer;->b(Ljava/util/Vector;[I)V

    move v5, v2

    .line 1094
    goto/16 :goto_0

    .line 1095
    :cond_7
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1099
    aget v0, v7, v4

    aput v0, v7, v3

    move v0, v3

    .line 1101
    goto/16 :goto_0

    .line 1102
    :cond_8
    const/16 v9, 0x3d

    if-ne v9, v8, :cond_0

    move v0, v4

    .line 1104
    goto/16 :goto_0

    .line 1106
    :pswitch_2
    if-eq v10, v8, :cond_9

    const/16 v9, 0x3e

    if-ne v9, v8, :cond_a

    .line 1108
    :cond_9
    invoke-direct {p0, v6, v7}, Lorg/htmlparser/lexer/Lexer;->c(Ljava/util/Vector;[I)V

    move v5, v2

    .line 1110
    goto/16 :goto_0

    .line 1111
    :cond_a
    const/16 v9, 0x27

    if-ne v9, v8, :cond_b

    .line 1113
    const/4 v0, 0x4

    .line 1114
    const/4 v8, 0x4

    const/4 v9, 0x3

    aget v9, v7, v9

    aput v9, v7, v8

    goto/16 :goto_0

    .line 1116
    :cond_b
    const/16 v9, 0x22

    if-ne v9, v8, :cond_c

    .line 1118
    const/4 v0, 0x5

    .line 1119
    const/4 v8, 0x5

    const/4 v9, 0x3

    aget v9, v7, v9

    aput v9, v7, v8

    goto/16 :goto_0

    .line 1121
    :cond_c
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1128
    const/4 v0, 0x3

    .line 1129
    goto/16 :goto_0

    .line 1131
    :pswitch_3
    if-eq v10, v8, :cond_d

    const/16 v9, 0x3e

    if-ne v9, v8, :cond_e

    .line 1133
    :cond_d
    invoke-direct {p0, v6, v7}, Lorg/htmlparser/lexer/Lexer;->d(Ljava/util/Vector;[I)V

    move v5, v2

    .line 1135
    goto/16 :goto_0

    .line 1136
    :cond_e
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1138
    invoke-direct {p0, v6, v7}, Lorg/htmlparser/lexer/Lexer;->d(Ljava/util/Vector;[I)V

    .line 1139
    const/4 v0, 0x4

    aget v0, v7, v0

    aput v0, v7, v1

    move v0, v1

    .line 1142
    goto/16 :goto_0

    .line 1144
    :pswitch_4
    if-ne v10, v8, :cond_f

    .line 1146
    invoke-direct {p0, v6, v7}, Lorg/htmlparser/lexer/Lexer;->e(Ljava/util/Vector;[I)V

    move v5, v2

    .line 1148
    goto/16 :goto_0

    .line 1149
    :cond_f
    const/16 v9, 0x27

    if-ne v9, v8, :cond_0

    .line 1151
    invoke-direct {p0, v6, v7}, Lorg/htmlparser/lexer/Lexer;->e(Ljava/util/Vector;[I)V

    .line 1152
    const/4 v0, 0x5

    aget v0, v7, v0

    add-int/lit8 v0, v0, 0x1

    aput v0, v7, v1

    move v0, v1

    .line 1155
    goto/16 :goto_0

    .line 1157
    :pswitch_5
    if-ne v10, v8, :cond_10

    .line 1159
    invoke-direct {p0, v6, v7}, Lorg/htmlparser/lexer/Lexer;->f(Ljava/util/Vector;[I)V

    move v5, v2

    .line 1161
    goto/16 :goto_0

    .line 1162
    :cond_10
    const/16 v9, 0x22

    if-ne v9, v8, :cond_0

    .line 1164
    invoke-direct {p0, v6, v7}, Lorg/htmlparser/lexer/Lexer;->f(Ljava/util/Vector;[I)V

    .line 1165
    aget v0, v7, v3

    add-int/lit8 v0, v0, 0x1

    aput v0, v7, v1

    move v0, v1

    .line 1168
    goto/16 :goto_0

    .line 1174
    :pswitch_6
    if-ne v10, v8, :cond_11

    .line 1177
    invoke-direct {p0, v6, v7}, Lorg/htmlparser/lexer/Lexer;->b(Ljava/util/Vector;[I)V

    .line 1178
    aget v0, v7, v3

    aput v0, v7, v1

    .line 1179
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0, v8}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    move v0, v1

    .line 1181
    goto/16 :goto_0

    .line 1182
    :cond_11
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1186
    const/16 v0, 0x3d

    if-ne v0, v8, :cond_12

    .line 1188
    aget v0, v7, v3

    aput v0, v7, v4

    .line 1189
    const/4 v0, 0x3

    const/4 v8, 0x7

    aget v8, v7, v8

    aput v8, v7, v0

    move v0, v4

    .line 1191
    goto/16 :goto_0

    .line 1199
    :cond_12
    invoke-direct {p0, v6, v7}, Lorg/htmlparser/lexer/Lexer;->b(Ljava/util/Vector;[I)V

    .line 1200
    aget v0, v7, v3

    aput v0, v7, v1

    .line 1201
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0, v8}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    move v0, v1

    .line 1204
    goto/16 :goto_0

    .line 1063
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected fG(I)Lorg/htmlparser/a;
    .locals 9

    .prologue
    .line 1411
    const/4 v1, 0x0

    .line 1412
    const/4 v0, 0x0

    .line 1413
    const/4 v2, 0x0

    .line 1414
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    move v7, v1

    .line 1421
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 1557
    const/4 v1, 0x4

    if-ne v1, v0, :cond_a

    .line 1559
    if-eqz v2, :cond_9

    .line 1561
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v0

    add-int/lit8 v3, v0, -0x2

    .line 1562
    new-instance v0, Lorg/htmlparser/lexer/PageAttribute;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1563
    new-instance v1, Lorg/htmlparser/lexer/PageAttribute;

    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    add-int/lit8 v4, v3, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    invoke-virtual {v8, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1571
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0, v8}, Lorg/htmlparser/lexer/Lexer;->a(IILjava/util/Vector;)Lorg/htmlparser/a;

    move-result-object v0

    :goto_1
    return-object v0

    .line 1423
    :cond_1
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v1, v3}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v1

    .line 1424
    sparse-switch v0, :sswitch_data_0

    .line 1553
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Somehow managed to get into invalid state  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1427
    :sswitch_0
    packed-switch v1, :pswitch_data_0

    .line 1435
    const/4 v1, 0x1

    move v7, v1

    .line 1438
    goto :goto_0

    .line 1430
    :pswitch_0
    const/4 v0, 0x1

    .line 1431
    goto :goto_0

    .line 1440
    :sswitch_1
    sparse-switch v1, :sswitch_data_1

    .line 1453
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 1454
    new-instance v0, Lorg/htmlparser/lexer/PageAttribute;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    add-int/lit8 v2, p1, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1455
    const/4 v0, 0x2

    move v2, v3

    .line 1458
    goto :goto_0

    .line 1444
    :sswitch_2
    const/4 v1, 0x1

    move v7, v1

    .line 1445
    goto :goto_0

    .line 1448
    :sswitch_3
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v3

    .line 1449
    new-instance v0, Lorg/htmlparser/lexer/PageAttribute;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    add-int/lit8 v2, p1, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1450
    const/4 v0, 0x2

    move v2, v3

    .line 1451
    goto/16 :goto_0

    .line 1460
    :sswitch_4
    sparse-switch v1, :sswitch_data_2

    goto/16 :goto_0

    :sswitch_5
    move v0, v1

    .line 1469
    goto/16 :goto_0

    .line 1464
    :sswitch_6
    const/4 v1, 0x1

    move v7, v1

    .line 1465
    goto/16 :goto_0

    .line 1471
    :sswitch_7
    const/4 v0, 0x3

    .line 1472
    goto/16 :goto_0

    .line 1474
    :sswitch_8
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v1, v3}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v1

    .line 1475
    const/16 v3, 0x2f

    if-ne v1, v3, :cond_4

    .line 1479
    :cond_2
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v1, v3}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v1

    .line 1480
    const v3, 0xffff

    if-ne v1, v3, :cond_3

    .line 1482
    const/4 v1, 0x1

    move v7, v1

    .line 1483
    goto/16 :goto_0

    .line 1485
    :cond_3
    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    const/16 v3, 0xd

    if-ne v1, v3, :cond_2

    goto/16 :goto_0

    .line 1491
    :cond_4
    const/16 v3, 0x2a

    if-ne v1, v3, :cond_8

    .line 1496
    :cond_5
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v1, v3}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v1

    .line 1497
    const v3, 0xffff

    if-eq v3, v1, :cond_6

    const/16 v3, 0x2a

    if-ne v3, v1, :cond_5

    .line 1498
    :cond_6
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v1, v3}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v1

    .line 1499
    const/16 v3, 0x2a

    if-ne v1, v3, :cond_7

    .line 1500
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    .line 1502
    :cond_7
    const v3, 0xffff

    if-eq v3, v1, :cond_0

    const/16 v3, 0x2f

    if-ne v3, v1, :cond_5

    goto/16 :goto_0

    .line 1504
    :cond_8
    const v3, 0xffff

    if-eq v1, v3, :cond_0

    .line 1505
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v1, v3}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    goto/16 :goto_0

    .line 1512
    :sswitch_9
    sparse-switch v1, :sswitch_data_3

    .line 1522
    const/4 v0, 0x2

    .line 1525
    goto/16 :goto_0

    .line 1515
    :sswitch_a
    const/4 v1, 0x1

    move v7, v1

    .line 1516
    goto/16 :goto_0

    .line 1518
    :sswitch_b
    const/4 v0, 0x4

    .line 1519
    const/4 v1, 0x1

    move v7, v1

    .line 1520
    goto/16 :goto_0

    .line 1527
    :sswitch_c
    sparse-switch v1, :sswitch_data_4

    goto/16 :goto_0

    .line 1533
    :sswitch_d
    const/4 v0, 0x2

    .line 1534
    goto/16 :goto_0

    .line 1530
    :sswitch_e
    const/4 v1, 0x1

    move v7, v1

    .line 1531
    goto/16 :goto_0

    .line 1540
    :sswitch_f
    sparse-switch v1, :sswitch_data_5

    goto/16 :goto_0

    .line 1546
    :sswitch_10
    const/4 v0, 0x2

    .line 1547
    goto/16 :goto_0

    .line 1543
    :sswitch_11
    const/4 v1, 0x1

    move v7, v1

    .line 1544
    goto/16 :goto_0

    .line 1566
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "jsp with no code!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1569
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/htmlparser/lexer/Lexer;->r(IZ)Lorg/htmlparser/a;

    move-result-object v0

    goto/16 :goto_1

    .line 1424
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x3 -> :sswitch_9
        0x22 -> :sswitch_c
        0x27 -> :sswitch_f
    .end sparse-switch

    .line 1427
    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch

    .line 1440
    :sswitch_data_1
    .sparse-switch
        0x3d -> :sswitch_3
        0x3e -> :sswitch_2
        0x40 -> :sswitch_3
        0xffff -> :sswitch_2
    .end sparse-switch

    .line 1460
    :sswitch_data_2
    .sparse-switch
        0x22 -> :sswitch_5
        0x25 -> :sswitch_7
        0x27 -> :sswitch_5
        0x2f -> :sswitch_8
        0x3e -> :sswitch_6
        0xffff -> :sswitch_6
    .end sparse-switch

    .line 1512
    :sswitch_data_3
    .sparse-switch
        0x3e -> :sswitch_b
        0xffff -> :sswitch_a
    .end sparse-switch

    .line 1527
    :sswitch_data_4
    .sparse-switch
        0x22 -> :sswitch_d
        0xffff -> :sswitch_e
    .end sparse-switch

    .line 1540
    :sswitch_data_5
    .sparse-switch
        0x27 -> :sswitch_10
        0xffff -> :sswitch_11
    .end sparse-switch
.end method

.method protected fH(I)Lorg/htmlparser/a;
    .locals 9

    .prologue
    .line 1592
    const/4 v1, 0x0

    .line 1593
    const/4 v0, 0x0

    .line 1594
    const/4 v2, 0x0

    .line 1595
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    move v7, v1

    .line 1598
    :goto_0
    if-eqz v7, :cond_0

    .line 1682
    const/4 v1, 0x3

    if-ne v1, v0, :cond_2

    .line 1684
    if-eqz v2, :cond_1

    .line 1686
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v0

    add-int/lit8 v3, v0, -0x2

    .line 1687
    new-instance v0, Lorg/htmlparser/lexer/PageAttribute;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1688
    new-instance v1, Lorg/htmlparser/lexer/PageAttribute;

    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    add-int/lit8 v4, v3, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    invoke-virtual {v8, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1696
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0, v8}, Lorg/htmlparser/lexer/Lexer;->a(IILjava/util/Vector;)Lorg/htmlparser/a;

    move-result-object v0

    :goto_1
    return-object v0

    .line 1600
    :cond_0
    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v1, v3}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v1

    .line 1601
    sparse-switch v0, :sswitch_data_0

    .line 1678
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Somehow managed to get into invalid state  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1604
    :sswitch_0
    packed-switch v1, :pswitch_data_0

    .line 1614
    const/4 v1, 0x1

    move v7, v1

    .line 1617
    goto :goto_0

    .line 1607
    :pswitch_0
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v3

    .line 1608
    new-instance v0, Lorg/htmlparser/lexer/PageAttribute;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    add-int/lit8 v2, p1, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1609
    const/4 v0, 0x1

    move v2, v3

    .line 1610
    goto :goto_0

    .line 1619
    :sswitch_1
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 1628
    goto :goto_0

    .line 1623
    :sswitch_3
    const/4 v1, 0x1

    move v7, v1

    .line 1624
    goto :goto_0

    .line 1630
    :sswitch_4
    const/4 v0, 0x2

    .line 1631
    goto :goto_0

    .line 1637
    :sswitch_5
    sparse-switch v1, :sswitch_data_2

    .line 1647
    const/4 v0, 0x1

    .line 1650
    goto/16 :goto_0

    .line 1640
    :sswitch_6
    const/4 v1, 0x1

    move v7, v1

    .line 1641
    goto/16 :goto_0

    .line 1643
    :sswitch_7
    const/4 v0, 0x3

    .line 1644
    const/4 v1, 0x1

    move v7, v1

    .line 1645
    goto/16 :goto_0

    .line 1652
    :sswitch_8
    sparse-switch v1, :sswitch_data_3

    goto/16 :goto_0

    .line 1658
    :sswitch_9
    const/4 v0, 0x1

    .line 1659
    goto/16 :goto_0

    .line 1655
    :sswitch_a
    const/4 v1, 0x1

    move v7, v1

    .line 1656
    goto/16 :goto_0

    .line 1665
    :sswitch_b
    sparse-switch v1, :sswitch_data_4

    goto/16 :goto_0

    .line 1671
    :sswitch_c
    const/4 v0, 0x1

    .line 1672
    goto/16 :goto_0

    .line 1668
    :sswitch_d
    const/4 v1, 0x1

    move v7, v1

    .line 1669
    goto/16 :goto_0

    .line 1691
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "processing instruction with no content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1694
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/htmlparser/lexer/Lexer;->r(IZ)Lorg/htmlparser/a;

    move-result-object v0

    goto :goto_1

    .line 1601
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_5
        0x22 -> :sswitch_8
        0x27 -> :sswitch_b
    .end sparse-switch

    .line 1604
    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch

    .line 1619
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_2
        0x3e -> :sswitch_3
        0x3f -> :sswitch_4
        0xffff -> :sswitch_3
    .end sparse-switch

    .line 1637
    :sswitch_data_2
    .sparse-switch
        0x3e -> :sswitch_7
        0xffff -> :sswitch_6
    .end sparse-switch

    .line 1652
    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_9
        0xffff -> :sswitch_a
    .end sparse-switch

    .line 1665
    :sswitch_data_4
    .sparse-switch
        0x27 -> :sswitch_c
        0xffff -> :sswitch_d
    .end sparse-switch
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->NC()Lorg/htmlparser/lexer/Cursor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method protected r(IZ)Lorg/htmlparser/a;
    .locals 10

    .prologue
    const/16 v9, 0x2a

    const/4 v1, 0x0

    const/16 v8, 0x2f

    const/4 v4, 0x1

    const v7, 0xffff

    .line 768
    move v0, v1

    move v3, v1

    .line 770
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 880
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/htmlparser/lexer/Lexer;->O(II)Lorg/htmlparser/a;

    move-result-object v0

    return-object v0

    .line 772
    :cond_1
    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v5}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v2

    .line 773
    if-ne v7, v2, :cond_2

    move v3, v4

    .line 774
    goto :goto_0

    .line 775
    :cond_2
    const/16 v5, 0x1b

    if-ne v5, v2, :cond_8

    .line 777
    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v5}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v2

    .line 778
    if-ne v7, v2, :cond_3

    move v3, v4

    .line 779
    goto :goto_0

    .line 780
    :cond_3
    const/16 v5, 0x24

    if-ne v5, v2, :cond_7

    .line 782
    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v5}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v2

    .line 783
    if-ne v7, v2, :cond_4

    move v3, v4

    .line 784
    goto :goto_0

    .line 786
    :cond_4
    const/16 v5, 0x40

    if-eq v5, v2, :cond_5

    const/16 v5, 0x42

    if-ne v5, v2, :cond_6

    .line 787
    :cond_5
    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0, v2}, Lorg/htmlparser/lexer/Lexer;->b(Lorg/htmlparser/lexer/Cursor;)V

    goto :goto_0

    .line 807
    :cond_6
    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v5}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    .line 808
    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v5}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    goto :goto_0

    .line 812
    :cond_7
    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v5}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    goto :goto_0

    .line 814
    :cond_8
    if-eqz p2, :cond_a

    if-nez v0, :cond_a

    .line 815
    const/16 v5, 0x27

    if-eq v5, v2, :cond_9

    const/16 v5, 0x22

    if-ne v5, v2, :cond_a

    :cond_9
    move v0, v2

    .line 816
    goto :goto_0

    .line 818
    :cond_a
    if-eqz p2, :cond_b

    if-eqz v0, :cond_b

    const/16 v5, 0x5c

    if-ne v5, v2, :cond_b

    .line 820
    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v5}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v2

    .line 821
    if-eq v7, v2, :cond_0

    .line 822
    const/16 v5, 0x5c

    if-eq v5, v2, :cond_0

    .line 823
    if-eq v2, v0, :cond_0

    .line 825
    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v5}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    goto/16 :goto_0

    .line 827
    :cond_b
    if-eqz p2, :cond_c

    if-ne v2, v0, :cond_c

    move v0, v1

    .line 828
    goto/16 :goto_0

    .line 829
    :cond_c
    if-eqz p2, :cond_14

    if-nez v0, :cond_14

    if-ne v2, v8, :cond_14

    .line 834
    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v5}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v2

    .line 835
    if-ne v7, v2, :cond_d

    move v3, v4

    .line 836
    goto/16 :goto_0

    .line 837
    :cond_d
    if-ne v8, v2, :cond_f

    .line 840
    :cond_e
    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v5}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v2

    .line 841
    if-eq v7, v2, :cond_0

    const/16 v5, 0xa

    if-ne v5, v2, :cond_e

    goto/16 :goto_0

    .line 843
    :cond_f
    if-ne v9, v2, :cond_13

    .line 848
    :cond_10
    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v5}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v2

    .line 849
    if-eq v7, v2, :cond_11

    if-ne v9, v2, :cond_10

    .line 850
    :cond_11
    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v5}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v2

    .line 851
    if-ne v2, v9, :cond_12

    .line 852
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5, v6}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    .line 854
    :cond_12
    if-eq v7, v2, :cond_0

    if-ne v8, v2, :cond_10

    goto/16 :goto_0

    .line 857
    :cond_13
    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v5}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    goto/16 :goto_0

    .line 859
    :cond_14
    if-nez v0, :cond_0

    const/16 v5, 0x3c

    if-ne v5, v2, :cond_0

    .line 861
    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v5}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v2

    .line 862
    if-ne v7, v2, :cond_15

    move v3, v4

    .line 863
    goto/16 :goto_0

    .line 865
    :cond_15
    if-eq v8, v2, :cond_16

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_16

    .line 866
    const/16 v5, 0x21

    if-eq v5, v2, :cond_16

    const/16 v5, 0x25

    if-eq v5, v2, :cond_16

    const/16 v5, 0x3f

    if-ne v5, v2, :cond_17

    .line 869
    :cond_16
    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v3}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    .line 870
    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v3}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    move v3, v4

    .line 871
    goto/16 :goto_0

    .line 875
    :cond_17
    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v5}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    goto/16 :goto_0
.end method

.method protected s(IZ)Lorg/htmlparser/a;
    .locals 10

    .prologue
    const v8, 0xffff

    const/16 v7, 0x3e

    const/4 v3, 0x2

    const/16 v6, 0x2d

    const/4 v1, 0x1

    .line 1292
    const/4 v2, 0x0

    .line 1293
    const/4 v0, 0x0

    move v9, v0

    move v0, v2

    move v2, v9

    .line 1294
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1362
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/htmlparser/lexer/Lexer;->P(II)Lorg/htmlparser/a;

    move-result-object v0

    :goto_1
    return-object v0

    .line 1296
    :cond_1
    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v4, v5}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v4

    .line 1297
    if-ne v8, v4, :cond_2

    move v0, v1

    .line 1298
    goto :goto_0

    .line 1300
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 1358
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Somehow managed to get into invalid state  "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1303
    :pswitch_0
    if-ne v7, v4, :cond_3

    move v0, v1

    .line 1305
    :cond_3
    if-ne v6, v4, :cond_4

    move v2, v1

    .line 1306
    goto :goto_0

    .line 1308
    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/htmlparser/lexer/Lexer;->r(IZ)Lorg/htmlparser/a;

    move-result-object v0

    goto :goto_1

    .line 1311
    :pswitch_1
    if-ne v6, v4, :cond_7

    .line 1314
    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v4, v5}, Lorg/htmlparser/lexer/Page;->c(Lorg/htmlparser/lexer/Cursor;)C

    move-result v4

    .line 1315
    if-ne v8, v4, :cond_5

    move v0, v1

    .line 1316
    goto :goto_0

    .line 1317
    :cond_5
    if-ne v7, v4, :cond_6

    move v0, v1

    .line 1318
    goto :goto_0

    .line 1321
    :cond_6
    iget-object v2, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v4}, Lorg/htmlparser/lexer/Page;->d(Lorg/htmlparser/lexer/Cursor;)V

    move v2, v3

    .line 1324
    goto :goto_0

    .line 1326
    :cond_7
    invoke-virtual {p0, p1, p2}, Lorg/htmlparser/lexer/Lexer;->r(IZ)Lorg/htmlparser/a;

    move-result-object v0

    goto :goto_1

    .line 1329
    :pswitch_2
    if-ne v6, v4, :cond_8

    .line 1330
    const/4 v2, 0x3

    goto :goto_0

    .line 1331
    :cond_8
    if-ne v8, v4, :cond_0

    .line 1332
    invoke-virtual {p0, p1, p2}, Lorg/htmlparser/lexer/Lexer;->r(IZ)Lorg/htmlparser/a;

    move-result-object v0

    goto :goto_1

    .line 1335
    :pswitch_3
    if-ne v6, v4, :cond_9

    .line 1336
    const/4 v2, 0x4

    goto :goto_0

    :cond_9
    move v2, v3

    .line 1339
    goto :goto_0

    .line 1341
    :pswitch_4
    if-ne v7, v4, :cond_a

    move v0, v1

    .line 1342
    goto :goto_0

    .line 1343
    :cond_a
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1348
    sget-boolean v5, Lorg/htmlparser/lexer/Lexer;->btk:Z

    if-nez v5, :cond_b

    if-eq v6, v4, :cond_0

    const/16 v5, 0x21

    if-eq v5, v4, :cond_0

    :cond_b
    move v2, v3

    .line 1356
    goto/16 :goto_0

    .line 1300
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setPosition(I)V
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->NC()Lorg/htmlparser/lexer/Cursor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/htmlparser/lexer/Cursor;->setPosition(I)V

    .line 277
    return-void
.end method
