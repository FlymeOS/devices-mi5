.class Landroid/widget/TranslationPresenter;
.super Ljava/lang/Object;
.source "TranslationPresenter.java"


# instance fields
.field private mAboveHandle:Z

.field private mContext:Landroid/content/Context;

.field private mCopyright:Landroid/widget/TextView;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mMaxHeight:I

.field private mMinHeight:I

.field private mProgressBar:Lmiui/widget/ProgressBar;

.field private mScrollContainer:Landroid/view/View;

.field private mScrollView:Landroid/view/View;

.field private mTextContainer:Landroid/view/View;

.field private mTranslationPanel:Landroid/view/View;

.field private mTranslations:Landroid/widget/TextView;

.field private mWord:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translationPanel"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/widget/TranslationPresenter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    .line 45
    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x110b000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    .line 47
    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x110b0034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    .line 48
    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x110b0035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mTextContainer:Landroid/view/View;

    .line 49
    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x1020015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x110b0036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mCopyright:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mProgressBar:Lmiui/widget/ProgressBar;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/TranslationPresenter;->mMinHeight:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/TranslationPresenter;->mMaxHeight:I

    .line 58
    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 59
    return-void
.end method


# virtual methods
.method public setAboveHandle(Z)V
    .locals 0
    .param p1, "aboveHandle"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Landroid/widget/TranslationPresenter;->mAboveHandle:Z

    .line 197
    return-void
.end method

.method public setInProgress()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 62
    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mCopyright:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mProgressBar:Lmiui/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    .line 67
    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 68
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/widget/TranslationPresenter;->mMinHeight:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 72
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 73
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    add-int v1, v3, v4

    .line 75
    .local v1, "paddings":I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    iget v4, p0, Landroid/widget/TranslationPresenter;->mMinHeight:I

    add-int/2addr v4, v1

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v3, v0

    .line 76
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v4, p0, Landroid/widget/TranslationPresenter;->mAboveHandle:Z

    if-eqz v4, :cond_0

    const/16 v4, 0xc

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 79
    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-void

    .line 76
    :cond_0
    const/16 v4, 0xa

    goto :goto_0
.end method

.method public updatePanel(Lcom/miui/translationservice/provider/TranslationResult;)V
    .locals 27
    .param p1, "result"    # Lcom/miui/translationservice/provider/TranslationResult;

    .prologue
    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mProgressBar:Lmiui/widget/ProgressBar;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    .line 86
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getStatus()I

    move-result v22

    if-eqz v22, :cond_3

    .line 87
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    if-nez p1, :cond_1

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x1107006e

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getStatus()I

    move-result v22

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getWordName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x1107006e

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getWordName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x1107006d

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 102
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getWordName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getSymbols()Ljava/util/List;

    move-result-object v19

    .line 108
    .local v19, "symbolList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/translationservice/provider/TranslationResult$Symbol;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_b

    .line 109
    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/miui/translationservice/provider/TranslationResult$Symbol;

    .line 110
    .local v18, "symbol":Lcom/miui/translationservice/provider/TranslationResult$Symbol;
    const/4 v6, 0x0

    .line 112
    .local v6, "hasPronun":Z
    invoke-virtual/range {v18 .. v18}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getWordSymbol()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 113
    const-string v22, "["

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getWordSymbol()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const/4 v6, 0x1

    .line 116
    :cond_4
    if-nez v6, :cond_5

    invoke-virtual/range {v18 .. v18}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getPhEn()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 117
    const-string v22, "["

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getPhEn()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const/4 v6, 0x1

    .line 120
    :cond_5
    if-nez v6, :cond_6

    invoke-virtual/range {v18 .. v18}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getPhAm()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 121
    const-string v22, "["

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getPhAm()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getParts()Ljava/util/List;

    move-result-object v16

    .line 125
    .local v16, "partList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/translationservice/provider/TranslationResult$Part;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_a

    .line 126
    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/translationservice/provider/TranslationResult$Part;

    .line 128
    .local v15, "part":Lcom/miui/translationservice/provider/TranslationResult$Part;
    invoke-virtual {v15}, Lcom/miui/translationservice/provider/TranslationResult$Part;->getPart()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 129
    const-string v22, "("

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Lcom/miui/translationservice/provider/TranslationResult$Part;->getPart()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_7
    invoke-virtual {v15}, Lcom/miui/translationservice/provider/TranslationResult$Part;->getMeans()Ljava/util/List;

    move-result-object v11

    .line 133
    .local v11, "means":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_9

    .line 134
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ne v9, v0, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-eq v8, v0, :cond_8

    .line 136
    const-string v22, "\r\n"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 138
    :cond_8
    const-string v22, "/"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 125
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 108
    .end local v9    # "k":I
    .end local v11    # "means":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "part":Lcom/miui/translationservice/provider/TranslationResult$Part;
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 143
    .end local v6    # "hasPronun":Z
    .end local v8    # "j":I
    .end local v16    # "partList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/translationservice/provider/TranslationResult$Part;>;"
    .end local v18    # "symbol":Lcom/miui/translationservice/provider/TranslationResult$Symbol;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getCopyright()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "copyright":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mCopyright:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mCopyright:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getCopyright()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mCopyright:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    const/high16 v24, -0x80000000

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/TextView;->measure(II)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mCopyright:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    .line 156
    .local v4, "copyrightHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x110a0032

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 158
    .local v12, "paddingBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mCopyright:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .local v10, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v22, v10

    .line 159
    check-cast v22, Landroid/view/ViewGroup$MarginLayoutParams;

    div-int/lit8 v23, v12, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mCopyright:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTextContainer:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTextContainer:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTextContainer:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getPaddingTop()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTextContainer:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getPaddingRight()I

    move-result v25

    add-int v26, v12, v4

    invoke-virtual/range {v22 .. v26}, Landroid/view/View;->setPadding(IIII)V

    .line 166
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 167
    .local v17, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 168
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    add-int v5, v22, v23

    .line 169
    .local v5, "hPaddings":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    add-int v21, v22, v23

    .line 170
    .local v21, "vPaddings":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 171
    .local v14, "panelWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 173
    .local v13, "panelHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTextContainer:Landroid/view/View;

    move-object/from16 v22, v0

    sub-int v23, v14, v5

    const/high16 v24, -0x80000000

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/view/View;->measure(II)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTextContainer:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    .line 179
    .local v20, "textHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 180
    sub-int v22, v14, v5

    move/from16 v0, v22

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 181
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TranslationPresenter;->mMaxHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 185
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TranslationPresenter;->mMaxHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    add-int v22, v22, v21

    move/from16 v0, v22

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v22, v10

    .line 186
    check-cast v22, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TranslationPresenter;->mAboveHandle:Z

    move/from16 v23, v0

    if-eqz v23, :cond_d

    const/16 v23, 0xc

    :goto_5
    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setLeft(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TranslationPresenter;->mAboveHandle:Z

    move/from16 v22, v0

    if-eqz v22, :cond_e

    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    sub-int v22, v13, v22

    :goto_6
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    goto/16 :goto_0

    .line 186
    :cond_d
    const/16 v23, 0xa

    goto :goto_5

    .line 191
    :cond_e
    const/16 v22, 0x0

    goto :goto_6
.end method
