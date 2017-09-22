.class Lcom/miui/internal/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeView"
.end annotation


# instance fields
.field private mV:Landroid/widget/ImageView;

.field private sf:Landroid/widget/ImageView;

.field private sg:I

.field private sh:I

.field private si:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1433
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1434
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 1437
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1438
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sf:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1450
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sh:I

    .line 1451
    return-void

    .line 1449
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->si:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public bn()I
    .locals 1

    .prologue
    .line 1484
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    .line 1469
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1470
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1471
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1473
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public m(Z)V
    .locals 2

    .prologue
    .line 1441
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sf:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1442
    return-void

    .line 1441
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 1460
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1461
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sh:I

    if-eqz v0, :cond_0

    .line 1463
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sh:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->p(I)V

    .line 1465
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 1478
    sget v0, Lcom/miui/internal/R$id;->up:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sf:Landroid/widget/ImageView;

    .line 1479
    sget v0, Lcom/miui/internal/R$id;->home:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mV:Landroid/widget/ImageView;

    .line 1480
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sf:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->si:Landroid/graphics/drawable/Drawable;

    .line 1481
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1532
    sub-int v0, p5, p3

    div-int/lit8 v7, v0, 0x2

    .line 1533
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    .line 1535
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sf:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sf:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1537
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sf:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    .line 1538
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sf:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    .line 1539
    div-int/lit8 v1, v0, 0x2

    sub-int v3, v7, v1

    .line 1540
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sf:Landroid/widget/ImageView;

    add-int v5, v3, v0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 1541
    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v4

    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v2, v0, v1

    .line 1542
    if-eqz v8, :cond_1

    .line 1543
    sub-int/2addr p4, v2

    .line 1549
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mV:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1550
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mV:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    .line 1551
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mV:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    .line 1552
    sub-int v1, p4, p2

    div-int/lit8 v1, v1, 0x2

    .line 1553
    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v3

    div-int/lit8 v6, v4, 0x2

    sub-int/2addr v1, v6

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v2, v1

    .line 1554
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    div-int/lit8 v1, v5, 0x2

    sub-int v1, v7, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1555
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mV:Landroid/widget/ImageView;

    add-int/2addr v4, v2

    add-int/2addr v5, v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 1556
    return-void

    .line 1545
    :cond_1
    add-int/2addr p2, v2

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1489
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sf:Landroid/widget/ImageView;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1490
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sf:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1491
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sf:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sg:I

    .line 1492
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sf:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    move v7, v3

    .line 1493
    :goto_0
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sf:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    .line 1494
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mV:Landroid/widget/ImageView;

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/miui/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1495
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mV:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1496
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mV:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    add-int v3, v7, v2

    .line 1497
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mV:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v2, v4

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1500
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 1501
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 1502
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1503
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1505
    sparse-switch v4, :sswitch_data_0

    move v2, v3

    .line 1516
    :goto_1
    :sswitch_0
    sparse-switch v5, :sswitch_data_1

    move v0, v1

    .line 1527
    :goto_2
    :sswitch_1
    invoke-virtual {p0, v2, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setMeasuredDimension(II)V

    .line 1528
    return-void

    .line 1492
    :cond_0
    iget v7, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sg:I

    goto :goto_0

    .line 1507
    :sswitch_2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 1518
    :sswitch_3
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 1505
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 1516
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public p(I)V
    .locals 2

    .prologue
    .line 1454
    iput p1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sh:I

    .line 1455
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sf:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1456
    return-void

    .line 1455
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mV:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1446
    return-void
.end method
