.class public Lmiui/widget/AlphabetFastIndexer;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/AlphabetFastIndexer$a;,
        Lmiui/widget/AlphabetFastIndexer$b;
    }
.end annotation


# static fields
.field private static final Mu:Ljava/lang/String; = "\u2665"

.field private static final Nc:Ljava/lang/String; = "#"

.field private static final Ng:I = 0x1

.field private static final Nh:I = 0x5dc

.field public static final STARRED_TITLE:Ljava/lang/String; = "!"

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_NONE:I


# instance fields
.field private MF:I

.field private MI:I

.field private MJ:I

.field private Mv:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field

.field private Mw:Landroid/widget/TextView;

.field private Mx:I

.field private My:I

.field private Mz:Z

.field private Na:I

.field private Nb:Landroid/graphics/drawable/Drawable;

.field private Nd:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private Ne:Lmiui/widget/AlphabetFastIndexer$b;

.field private Nf:I

.field private Ni:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private qr:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/AlphabetFastIndexer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    new-instance v0, Lmiui/widget/AlphabetFastIndexer$1;

    invoke-direct {v0, p0}, Lmiui/widget/AlphabetFastIndexer$1;-><init>(Lmiui/widget/AlphabetFastIndexer;)V

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Nd:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 110
    iput v2, p0, Lmiui/widget/AlphabetFastIndexer;->Nf:I

    .line 112
    iput v2, p0, Lmiui/widget/AlphabetFastIndexer;->qr:I

    .line 323
    new-instance v0, Lmiui/widget/AlphabetFastIndexer$2;

    invoke-direct {v0, p0}, Lmiui/widget/AlphabetFastIndexer$2;-><init>(Lmiui/widget/AlphabetFastIndexer;)V

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Ni:Ljava/lang/Runnable;

    .line 759
    new-instance v0, Lmiui/widget/AlphabetFastIndexer$3;

    invoke-direct {v0, p0}, Lmiui/widget/AlphabetFastIndexer$3;-><init>(Lmiui/widget/AlphabetFastIndexer;)V

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 248
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    if-nez v1, :cond_1

    .line 249
    :goto_0
    sget-object v1, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer:[I

    invoke-virtual {p1, p2, v1, v2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 252
    new-instance v2, Lmiui/widget/AlphabetFastIndexer$b;

    invoke-direct {v2, p1, v1}, Lmiui/widget/AlphabetFastIndexer$b;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    iput-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->Ne:Lmiui/widget/AlphabetFastIndexer$b;

    .line 254
    sget v2, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_drawOverlay:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/widget/AlphabetFastIndexer;->Mz:Z

    .line 255
    iget-boolean v2, p0, Lmiui/widget/AlphabetFastIndexer;->Mz:Z

    if-eqz v2, :cond_0

    .line 256
    sget v2, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_overlayMarginLeft:I

    sget v3, Lcom/miui/internal/R$dimen;->alphabet_indexer_overlay_offset:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/AlphabetFastIndexer;->MF:I

    .line 258
    sget v2, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_overlayMarginTop:I

    sget v3, Lcom/miui/internal/R$dimen;->alphabet_indexer_overlay_padding_top:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/AlphabetFastIndexer;->MI:I

    .line 260
    sget v2, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_overlayTextSize:I

    sget v3, Lcom/miui/internal/R$dimen;->alphabet_indexer_overlay_text_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/AlphabetFastIndexer;->MJ:I

    .line 262
    sget v2, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_overlayTextColor:I

    sget v3, Lcom/miui/internal/R$color;->alphabet_indexer_overlay_text_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/AlphabetFastIndexer;->Na:I

    .line 264
    sget v2, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_overlayBackground:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->Nb:Landroid/graphics/drawable/Drawable;

    .line 265
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->Nb:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 266
    sget v2, Lcom/miui/internal/R$drawable;->alphabet_indexer_overlay:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Nb:Landroid/graphics/drawable/Drawable;

    .line 270
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 271
    const v0, 0x800005

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->My:I

    .line 272
    return-void

    .line 248
    :cond_1
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result p3

    goto :goto_0
.end method

.method private a(FLandroid/widget/SectionIndexer;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 586
    invoke-interface {p2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    .line 587
    if-nez v2, :cond_1

    .line 626
    :cond_0
    :goto_0
    return v0

    .line 591
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v3

    .line 592
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v4

    .line 593
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v4

    .line 594
    if-lez v4, :cond_0

    .line 597
    int-to-float v3, v3

    sub-float v3, p1, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 598
    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->Ne:Lmiui/widget/AlphabetFastIndexer$b;

    iget-object v4, v4, Lmiui/widget/AlphabetFastIndexer$b;->No:[Ljava/lang/String;

    array-length v4, v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 599
    if-ltz v3, :cond_0

    .line 601
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Ne:Lmiui/widget/AlphabetFastIndexer$b;

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer$b;->No:[Ljava/lang/String;

    array-length v0, v0

    if-lt v3, v0, :cond_2

    .line 602
    array-length v0, v2

    goto :goto_0

    .line 605
    :cond_2
    array-length v0, v2

    .line 606
    const/4 v4, 0x1

    if-le v0, v4, :cond_4

    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->Ne:Lmiui/widget/AlphabetFastIndexer$b;

    iget-boolean v4, v4, Lmiui/widget/AlphabetFastIndexer$b;->Nr:Z

    if-eqz v4, :cond_4

    .line 607
    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->Ne:Lmiui/widget/AlphabetFastIndexer$b;

    iget-object v4, v4, Lmiui/widget/AlphabetFastIndexer$b;->No:[Ljava/lang/String;

    aget-object v4, v4, v3

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 608
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 610
    :cond_3
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 611
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 615
    :cond_4
    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->Ne:Lmiui/widget/AlphabetFastIndexer$b;

    iget-object v4, v4, Lmiui/widget/AlphabetFastIndexer$b;->No:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-static {v2, v1, v0, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    .line 617
    if-gez v0, :cond_5

    .line 620
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x2

    .line 623
    :cond_5
    if-gez v0, :cond_0

    move v0, v1

    .line 624
    goto :goto_0
.end method

.method static synthetic a(Lmiui/widget/AlphabetFastIndexer;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->Nf:I

    return p1
.end method

.method static synthetic a(Lmiui/widget/AlphabetFastIndexer;)Lmiui/widget/AlphabetFastIndexer$b;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Ne:Lmiui/widget/AlphabetFastIndexer$b;

    return-object v0
.end method

.method private a(Landroid/widget/SectionIndexer;I)V
    .locals 16

    .prologue
    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v9

    .line 634
    invoke-direct/range {p0 .. p0}, Lmiui/widget/AlphabetFastIndexer;->dI()I

    move-result v10

    .line 635
    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v3, v9

    div-float/2addr v2, v3

    const/high16 v3, 0x41000000    # 8.0f

    div-float v11, v2, v3

    .line 636
    invoke-interface/range {p1 .. p1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v12

    .line 638
    if-eqz v12, :cond_6

    array-length v2, v12

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    .line 639
    array-length v13, v12

    .line 641
    move/from16 v0, p2

    if-lt v0, v13, :cond_e

    .line 642
    add-int/lit8 v2, v13, -0x1

    .line 646
    :goto_0
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v4

    .line 656
    add-int/lit8 v7, v2, 0x1

    .line 658
    add-int/lit8 v3, v13, -0x1

    if-ge v2, v3, :cond_d

    .line 659
    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v3

    move v8, v3

    .line 663
    :goto_1
    if-ne v8, v4, :cond_c

    move v3, v4

    move v5, v2

    .line 665
    :goto_2
    if-lez v5, :cond_b

    .line 666
    add-int/lit8 v3, v5, -0x1

    .line 667
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v5

    .line 668
    if-eq v5, v4, :cond_0

    move v4, v5

    move v5, v3

    .line 687
    :goto_3
    add-int/lit8 v6, v7, 0x1

    .line 689
    :goto_4
    if-ge v6, v13, :cond_1

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v14

    if-ne v14, v8, :cond_1

    .line 690
    add-int/lit8 v6, v6, 0x1

    .line 691
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 672
    :cond_0
    if-nez v3, :cond_a

    .line 677
    const/4 v3, 0x0

    move v4, v5

    move v5, v3

    move v3, v2

    .line 678
    goto :goto_3

    .line 696
    :cond_1
    int-to-float v6, v3

    int-to-float v14, v13

    div-float/2addr v6, v14

    .line 697
    int-to-float v7, v7

    int-to-float v14, v13

    div-float/2addr v7, v14

    .line 698
    move/from16 v0, p2

    int-to-float v14, v0

    int-to-float v13, v13

    div-float v13, v14, v13

    .line 699
    if-ne v3, v2, :cond_3

    sub-float v2, v13, v6

    cmpg-float v2, v2, v11

    if-gez v2, :cond_3

    move v2, v4

    .line 705
    :goto_5
    add-int/lit8 v3, v9, -0x1

    if-le v2, v3, :cond_9

    .line 706
    add-int/lit8 v2, v9, -0x1

    move v3, v2

    .line 708
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    instance-of v2, v2, Landroid/widget/ExpandableListView;

    if-eqz v2, :cond_4

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    check-cast v2, Landroid/widget/ExpandableListView;

    .line 710
    add-int/2addr v3, v10

    invoke-static {v3}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 731
    :goto_7
    if-ltz v5, :cond_2

    if-eqz v12, :cond_2

    .line 732
    aget-object v2, v12, v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 733
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 734
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmiui/widget/AlphabetFastIndexer;->c(Ljava/lang/CharSequence;)V

    .line 737
    :cond_2
    return-void

    .line 702
    :cond_3
    sub-int v2, v8, v4

    int-to-float v2, v2

    sub-float v3, v13, v6

    mul-float/2addr v2, v3

    sub-float v3, v7, v6

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v4

    goto :goto_5

    .line 712
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    instance-of v2, v2, Landroid/widget/ListView;

    if-eqz v2, :cond_5

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    check-cast v2, Landroid/widget/ListView;

    add-int/2addr v3, v10

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_7

    .line 715
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    add-int/2addr v3, v10

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_7

    .line 718
    :cond_6
    mul-int v2, p2, v9

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    instance-of v2, v2, Landroid/widget/ExpandableListView;

    if-eqz v2, :cond_7

    .line 720
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    check-cast v2, Landroid/widget/ExpandableListView;

    .line 721
    add-int/2addr v3, v10

    invoke-static {v3}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 728
    :goto_8
    const/4 v5, -0x1

    goto :goto_7

    .line 723
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    instance-of v2, v2, Landroid/widget/ListView;

    if-eqz v2, :cond_8

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    check-cast v2, Landroid/widget/ListView;

    add-int/2addr v3, v10

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_8

    .line 726
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    add-int/2addr v3, v10

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_8

    :cond_9
    move v3, v2

    goto/16 :goto_6

    :cond_a
    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_2

    :cond_b
    move v4, v3

    move v5, v2

    move v3, v2

    goto/16 :goto_3

    :cond_c
    move v3, v2

    move v5, v2

    goto/16 :goto_3

    :cond_d
    move v8, v9

    goto/16 :goto_1

    :cond_e
    move/from16 v2, p2

    goto/16 :goto_0
.end method

.method private aa(I)V
    .locals 3

    .prologue
    .line 774
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Ne:Lmiui/widget/AlphabetFastIndexer$b;

    if-nez v0, :cond_0

    .line 788
    :goto_0
    return-void

    .line 778
    :cond_0
    if-gez p1, :cond_1

    .line 779
    const/4 p1, 0x0

    .line 782
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v0

    .line 783
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 784
    int-to-float v1, v1

    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->Ne:Lmiui/widget/AlphabetFastIndexer$b;

    iget-object v2, v2, Lmiui/widget/AlphabetFastIndexer$b;->No:[Ljava/lang/String;

    array-length v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 786
    int-to-float v2, p1

    mul-float/2addr v2, v1

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 787
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->Ne:Lmiui/widget/AlphabetFastIndexer$b;

    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->Nd:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v0, v2}, Lmiui/widget/AlphabetFastIndexer$b;->a(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lmiui/widget/AlphabetFastIndexer;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->dG()V

    return-void
.end method

.method static synthetic c(Lmiui/widget/AlphabetFastIndexer;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Mw:Landroid/widget/TextView;

    return-object v0
.end method

.method private c(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 740
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    if-nez v0, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Mw:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 746
    const-string v0, "!"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "\u2665"

    .line 747
    :cond_2
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Mw:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 749
    :cond_3
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 750
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Mw:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 751
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Mw:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 753
    :cond_4
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 754
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 755
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private dG()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 422
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    if-nez v0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->dH()Landroid/widget/SectionIndexer;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_5

    .line 429
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->dI()I

    move-result v2

    sub-int/2addr v1, v2

    .line 430
    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v1

    .line 431
    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 432
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 433
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 434
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->Ne:Lmiui/widget/AlphabetFastIndexer$b;

    iget-object v1, v1, Lmiui/widget/AlphabetFastIndexer$b;->No:[Ljava/lang/String;

    array-length v2, v1

    .line 436
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->Ne:Lmiui/widget/AlphabetFastIndexer$b;

    iget-boolean v1, v1, Lmiui/widget/AlphabetFastIndexer$b;->Nr:Z

    if-eqz v1, :cond_4

    .line 437
    add-int/lit8 v1, v2, -0x1

    .line 439
    :goto_1
    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 440
    add-int/lit8 v0, v2, -0x1

    .line 448
    :goto_2
    iget v1, p0, Lmiui/widget/AlphabetFastIndexer;->Mx:I

    if-eq v1, v0, :cond_0

    .line 449
    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->Mx:I

    .line 450
    const/4 v0, 0x1

    iget v1, p0, Lmiui/widget/AlphabetFastIndexer;->qr:I

    if-eq v0, v1, :cond_2

    .line 451
    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->Mx:I

    invoke-direct {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->aa(I)V

    .line 453
    :cond_2
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->invalidate()V

    goto :goto_0

    .line 442
    :cond_3
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->Ne:Lmiui/widget/AlphabetFastIndexer$b;

    iget-object v2, v2, Lmiui/widget/AlphabetFastIndexer$b;->No:[Ljava/lang/String;

    invoke-static {v2, v3, v1, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_2
.end method

.method private dH()Landroid/widget/SectionIndexer;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 466
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    .line 480
    :goto_0
    return-object v1

    .line 471
    :cond_0
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 473
    :goto_1
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-nez v2, :cond_1

    instance-of v2, v0, Landroid/widget/WrapperListAdapter;

    if-eqz v2, :cond_1

    .line 474
    check-cast v0, Landroid/widget/WrapperListAdapter;

    invoke-interface {v0}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_1

    .line 476
    :cond_1
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_2

    .line 477
    check-cast v0, Landroid/widget/SectionIndexer;

    :goto_2
    move-object v1, v0

    .line 480
    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method private dI()I
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 488
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public attatch(Landroid/widget/AdapterView;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/16 v5, 0x11

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 338
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    if-ne v0, p1, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->detach()V

    .line 343
    if-eqz p1, :cond_0

    .line 347
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->Mx:I

    .line 349
    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    .line 350
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 352
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 357
    iget-boolean v2, p0, Lmiui/widget/AlphabetFastIndexer;->Mz:Z

    if-eqz v2, :cond_2

    .line 358
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->Mw:Landroid/widget/TextView;

    .line 359
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 362
    iget v2, p0, Lmiui/widget/AlphabetFastIndexer;->MF:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 363
    iget v2, p0, Lmiui/widget/AlphabetFastIndexer;->MI:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 364
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->Mw:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->Mw:Landroid/widget/TextView;

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 367
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->Mw:Landroid/widget/TextView;

    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->Nb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 368
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->Mw:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 369
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->Mw:Landroid/widget/TextView;

    iget v2, p0, Lmiui/widget/AlphabetFastIndexer;->MJ:I

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 370
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->Mw:Landroid/widget/TextView;

    iget v2, p0, Lmiui/widget/AlphabetFastIndexer;->Na:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 371
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->Mw:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->Mw:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 376
    :cond_2
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 377
    iget v1, p0, Lmiui/widget/AlphabetFastIndexer;->My:I

    or-int/lit8 v1, v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 378
    invoke-virtual {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->dG()V

    goto :goto_0
.end method

.method public decorateScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 406
    new-instance v0, Lmiui/widget/AlphabetFastIndexer$a;

    invoke-direct {v0, p0, p1}, Lmiui/widget/AlphabetFastIndexer$a;-><init>(Lmiui/widget/AlphabetFastIndexer;Landroid/widget/AbsListView$OnScrollListener;)V

    return-object v0
.end method

.method public detach()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    if-eqz v0, :cond_1

    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    .line 389
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 390
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->Mw:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->Mw:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 394
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->setVisibility(I)V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    .line 397
    :cond_1
    return-void
.end method

.method public drawThumb(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 415
    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->qr:I

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->Nf:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 417
    invoke-direct {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->c(Ljava/lang/CharSequence;)V

    .line 419
    :cond_0
    return-void
.end method

.method public getIndexerIntrinsicWidth()I
    .locals 1

    .prologue
    .line 461
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 302
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 304
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v0

    .line 305
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 306
    if-gtz v1, :cond_1

    .line 321
    :cond_0
    return-void

    .line 310
    :cond_1
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->Ne:Lmiui/widget/AlphabetFastIndexer$b;

    iget-object v6, v2, Lmiui/widget/AlphabetFastIndexer$b;->No:[Ljava/lang/String;

    .line 311
    int-to-float v1, v1

    array-length v2, v6

    int-to-float v2, v2

    div-float v7, v1, v2

    .line 312
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v3

    .line 314
    int-to-float v0, v0

    div-float v1, v7, v3

    add-float v5, v0, v1

    .line 315
    const/4 v3, 0x0

    :goto_0
    array-length v0, v6

    if-ge v3, v0, :cond_0

    .line 317
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Ne:Lmiui/widget/AlphabetFastIndexer$b;

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->isPressed()Z

    move-result v2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/AlphabetFastIndexer$b;->a(Landroid/graphics/Canvas;ZIFF)V

    .line 319
    add-float/2addr v5, v7

    .line 315
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 295
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 296
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->Mx:I

    .line 297
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Ni:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->post(Ljava/lang/Runnable;)Z

    .line 298
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/16 v4, 0x5dc

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 527
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    if-nez v2, :cond_0

    .line 528
    invoke-virtual {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    .line 567
    :goto_0
    return v0

    .line 532
    :cond_0
    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->dH()Landroid/widget/SectionIndexer;

    move-result-object v2

    .line 533
    if-nez v2, :cond_1

    .line 534
    invoke-virtual {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    goto :goto_0

    .line 538
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 539
    packed-switch v3, :pswitch_data_0

    .line 564
    invoke-virtual {p0, v4}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    :cond_2
    :goto_1
    move v0, v1

    .line 567
    goto :goto_0

    .line 541
    :pswitch_0
    iput v1, p0, Lmiui/widget/AlphabetFastIndexer;->qr:I

    .line 542
    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->setPressed(Z)V

    .line 545
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v3, v2}, Lmiui/widget/AlphabetFastIndexer;->a(FLandroid/widget/SectionIndexer;)I

    move-result v3

    .line 546
    if-gez v3, :cond_3

    .line 547
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->Mv:Landroid/widget/AdapterView;

    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_1

    .line 549
    :cond_3
    invoke-direct {p0, v2, v3}, Lmiui/widget/AlphabetFastIndexer;->a(Landroid/widget/SectionIndexer;I)V

    .line 550
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Ne:Lmiui/widget/AlphabetFastIndexer$b;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 553
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Ne:Lmiui/widget/AlphabetFastIndexer$b;

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lmiui/widget/AlphabetFastIndexer$b;->c(FF)V

    .line 554
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->postInvalidate()V

    goto :goto_1

    .line 560
    :pswitch_2
    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->Mx:I

    invoke-direct {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->aa(I)V

    .line 561
    invoke-virtual {p0, v4}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    goto :goto_1

    .line 539
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOverlayOffset(II)V
    .locals 0

    .prologue
    .line 289
    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->MF:I

    .line 290
    iput p2, p0, Lmiui/widget/AlphabetFastIndexer;->MI:I

    .line 291
    return-void
.end method

.method public setVerticalPosition(Z)V
    .locals 1

    .prologue
    .line 280
    if-eqz p1, :cond_0

    const v0, 0x800005

    :goto_0
    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->My:I

    .line 281
    return-void

    .line 280
    :cond_0
    const v0, 0x800003

    goto :goto_0
.end method

.method stop(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 571
    invoke-virtual {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->setPressed(Z)V

    .line 572
    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->qr:I

    .line 573
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->postInvalidate()V

    .line 574
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 575
    if-gtz p1, :cond_1

    .line 576
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Mw:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Mw:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 581
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
