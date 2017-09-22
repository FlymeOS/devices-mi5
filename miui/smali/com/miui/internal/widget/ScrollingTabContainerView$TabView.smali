.class public Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation


# instance fields
.field private bJ:Landroid/view/View;

.field private mV:Landroid/widget/ImageView;

.field private uA:Landroid/widget/ImageView;

.field private uB:Lcom/miui/internal/widget/ScrollingTabContainerView;

.field private uy:Landroid/app/ActionBar$Tab;

.field private uz:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 505
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->uA:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method b(Lcom/miui/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)V
    .locals 1

    .prologue
    .line 508
    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->uB:Lcom/miui/internal/widget/ScrollingTabContainerView;

    .line 509
    iput-object p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->uy:Landroid/app/ActionBar$Tab;

    .line 511
    if-eqz p3, :cond_0

    .line 512
    const v0, 0x800013

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 516
    return-void
.end method

.method public bindTab(Landroid/app/ActionBar$Tab;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->uy:Landroid/app/ActionBar$Tab;

    .line 520
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 521
    return-void
.end method

.method public getTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->uy:Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->uz:Landroid/widget/TextView;

    return-object v0
.end method

.method public onMeasure(II)V
    .locals 2

    .prologue
    .line 525
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 527
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->uB:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->uB:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Lcom/miui/internal/widget/ScrollingTabContainerView;->uj:I

    .line 530
    :goto_0
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 531
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 534
    :cond_0
    return-void

    .line 527
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update()V
    .locals 11

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, -0x2

    .line 537
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->uy:Landroid/app/ActionBar$Tab;

    .line 538
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 539
    if-eqz v1, :cond_4

    .line 540
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 541
    if-eq v0, p0, :cond_1

    .line 542
    if-eqz v0, :cond_0

    .line 543
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 545
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 547
    :cond_1
    iput-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->bJ:Landroid/view/View;

    .line 548
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->uz:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->uz:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mV:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 552
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mV:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mV:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 628
    :cond_3
    :goto_0
    return-void

    .line 556
    :cond_4
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->bJ:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 557
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->bJ:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V

    .line 558
    iput-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->bJ:Landroid/view/View;

    .line 561
    :cond_5
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 562
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 563
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 565
    if-eqz v2, :cond_b

    .line 566
    iget-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mV:Landroid/widget/ImageView;

    if-nez v4, :cond_6

    .line 567
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 568
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 570
    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 571
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    invoke-virtual {p0, v4, v9}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V

    .line 573
    iput-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mV:Landroid/widget/ImageView;

    .line 575
    :cond_6
    iget-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mV:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 576
    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mV:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 582
    :cond_7
    :goto_1
    if-eqz v3, :cond_c

    .line 583
    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->uz:Landroid/widget/TextView;

    if-nez v2, :cond_8

    .line 584
    new-instance v2, Lcom/miui/internal/widget/ScrollingTabTextView;

    const v4, 0x10102f5

    invoke-direct {v2, v1, v8, v4}, Lcom/miui/internal/widget/ScrollingTabTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 586
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 587
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 589
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 590
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 592
    iput-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->uz:Landroid/widget/TextView;

    .line 594
    :cond_8
    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->uz:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->uz:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 597
    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->uA:Landroid/widget/ImageView;

    if-nez v2, :cond_a

    .line 598
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 599
    sget v3, Lcom/miui/internal/R$attr;->actionBarTabBadgeIcon:I

    invoke-static {v1, v3}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 601
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 605
    const/16 v3, 0x30

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 606
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 607
    if-eqz v3, :cond_9

    .line 608
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 609
    iget-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->uz:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    .line 610
    if-le v3, v4, :cond_9

    .line 611
    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 615
    :cond_9
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 617
    iput-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->uA:Landroid/widget/ImageView;

    .line 624
    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mV:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 625
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mV:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 577
    :cond_b
    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mV:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    .line 578
    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mV:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mV:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 619
    :cond_c
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->uz:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    .line 620
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->uz:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 621
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->uz:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
