.class Lcom/miui/internal/app/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/app/ActionBar$FragmentViewPagerChangeListener;


# instance fields
.field bL:Lmiui/view/ViewPager;

.field bN:Lcom/miui/internal/app/b;

.field cY:Landroid/graphics/Rect;

.field cZ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field da:I

.field db:Z

.field dc:I

.field dd:I

.field de:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lmiui/view/ViewPager;Lcom/miui/internal/app/b;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/c;->cY:Landroid/graphics/Rect;

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/c;->cZ:Ljava/util/ArrayList;

    .line 475
    iput v1, p0, Lcom/miui/internal/app/c;->da:I

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/c;->db:Z

    .line 480
    iput v1, p0, Lcom/miui/internal/app/c;->dc:I

    .line 483
    iput v1, p0, Lcom/miui/internal/app/c;->dd:I

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/app/c;->de:Landroid/view/ViewGroup;

    .line 493
    iput-object p1, p0, Lcom/miui/internal/app/c;->bL:Lmiui/view/ViewPager;

    .line 494
    iput-object p2, p0, Lcom/miui/internal/app/c;->bN:Lcom/miui/internal/app/b;

    .line 495
    return-void
.end method


# virtual methods
.method a(IIIF)I
    .locals 4

    .prologue
    .line 626
    .line 628
    if-ge p1, p3, :cond_0

    mul-int v0, p1, p2

    div-int/2addr v0, p3

    .line 629
    :goto_0
    mul-float v1, p4, p4

    .line 630
    int-to-float v0, v0

    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3f666666    # 0.9f

    div-float/2addr v1, v3

    sub-float v1, v2, v1

    int-to-float v2, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 631
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    float-to-int v0, v0

    :goto_1
    return v0

    :cond_0
    move v0, p2

    .line 628
    goto :goto_0

    .line 631
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Landroid/view/ViewGroup;IIFZ)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 608
    iget-object v0, p0, Lcom/miui/internal/app/c;->cZ:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/c;->a(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    .line 609
    iget-object v0, p0, Lcom/miui/internal/app/c;->cZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/miui/internal/app/c;->cZ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 611
    const v0, 0x7fffffff

    .line 613
    iget-object v2, p0, Lcom/miui/internal/app/c;->cZ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 614
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v2, v5, :cond_0

    .line 615
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 616
    sub-int v1, v2, v3

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/miui/internal/app/c;->a(IIIF)I

    move-result v1

    .line 617
    if-eqz p5, :cond_1

    .line 620
    :cond_0
    :goto_1
    int-to-float v5, v1

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 617
    :cond_1
    neg-int v1, v1

    goto :goto_1

    .line 623
    :cond_2
    return-void
.end method

.method a(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 571
    invoke-virtual {p0, p2, p1}, Lcom/miui/internal/app/c;->a(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V

    .line 572
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 574
    iget-object v0, p0, Lcom/miui/internal/app/c;->cY:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lmiui/util/ViewUtils;->getContentRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 575
    iget-object v0, p0, Lcom/miui/internal/app/c;->cY:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    :cond_0
    return-void

    .line 579
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 580
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 581
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 582
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_3

    .line 583
    :cond_2
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method a(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 589
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 590
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 591
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    .line 592
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 596
    :cond_1
    return-void
.end method

.method d(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 599
    iget-object v0, p0, Lcom/miui/internal/app/c;->cZ:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/c;->a(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    .line 600
    iget-object v0, p0, Lcom/miui/internal/app/c;->cZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/miui/internal/app/c;->cZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 602
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 605
    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 559
    if-nez p1, :cond_0

    .line 560
    iget-object v0, p0, Lcom/miui/internal/app/c;->bL:Lmiui/view/ViewPager;

    invoke-virtual {v0}, Lmiui/view/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/app/c;->da:I

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/c;->db:Z

    .line 563
    iget-object v0, p0, Lcom/miui/internal/app/c;->de:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/miui/internal/app/c;->de:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/c;->d(Landroid/view/ViewGroup;)V

    .line 567
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 500
    cmpl-float v0, p2, v2

    if-nez v0, :cond_0

    .line 501
    iput p1, p0, Lcom/miui/internal/app/c;->da:I

    .line 502
    iput-boolean v5, p0, Lcom/miui/internal/app/c;->db:Z

    .line 504
    iget-object v0, p0, Lcom/miui/internal/app/c;->de:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/miui/internal/app/c;->de:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/c;->d(Landroid/view/ViewGroup;)V

    .line 509
    :cond_0
    iget v0, p0, Lcom/miui/internal/app/c;->dc:I

    if-eq v0, p1, :cond_2

    .line 510
    iget v0, p0, Lcom/miui/internal/app/c;->da:I

    if-ge v0, p1, :cond_5

    .line 511
    iput p1, p0, Lcom/miui/internal/app/c;->da:I

    .line 515
    :cond_1
    :goto_0
    iput p1, p0, Lcom/miui/internal/app/c;->dc:I

    .line 516
    iput-boolean v5, p0, Lcom/miui/internal/app/c;->db:Z

    .line 518
    iget-object v0, p0, Lcom/miui/internal/app/c;->de:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 519
    iget-object v0, p0, Lcom/miui/internal/app/c;->de:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/c;->d(Landroid/view/ViewGroup;)V

    .line 523
    :cond_2
    cmpl-float v0, p2, v2

    if-lez v0, :cond_4

    .line 525
    iget-boolean v0, p0, Lcom/miui/internal/app/c;->db:Z

    if-eqz v0, :cond_3

    .line 526
    iput-boolean v6, p0, Lcom/miui/internal/app/c;->db:Z

    .line 527
    iget v0, p0, Lcom/miui/internal/app/c;->da:I

    if-ne v0, p1, :cond_6

    iget-object v0, p0, Lcom/miui/internal/app/c;->bN:Lcom/miui/internal/app/b;

    invoke-virtual {v0}, Lcom/miui/internal/app/b;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_6

    .line 528
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/miui/internal/app/c;->dd:I

    .line 532
    :goto_1
    iget-object v0, p0, Lcom/miui/internal/app/c;->bN:Lcom/miui/internal/app/b;

    iget v1, p0, Lcom/miui/internal/app/c;->dd:I

    invoke-virtual {v0, v1, v6}, Lcom/miui/internal/app/b;->b(IZ)Landroid/app/Fragment;

    move-result-object v0

    .line 533
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/internal/app/c;->de:Landroid/view/ViewGroup;

    .line 534
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 535
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 536
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 537
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/internal/app/c;->de:Landroid/view/ViewGroup;

    .line 542
    :cond_3
    iget v0, p0, Lcom/miui/internal/app/c;->dd:I

    if-ne v0, p1, :cond_8

    .line 543
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v4, v0, p2

    .line 546
    :goto_2
    iget-object v0, p0, Lcom/miui/internal/app/c;->de:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 547
    iget-object v1, p0, Lcom/miui/internal/app/c;->de:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/internal/app/c;->de:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/miui/internal/app/c;->de:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iget v0, p0, Lcom/miui/internal/app/c;->dd:I

    if-eq v0, p1, :cond_7

    :goto_3
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/app/c;->a(Landroid/view/ViewGroup;IIFZ)V

    .line 551
    :cond_4
    return-void

    .line 512
    :cond_5
    iget v0, p0, Lcom/miui/internal/app/c;->da:I

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_1

    .line 513
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/miui/internal/app/c;->da:I

    goto :goto_0

    .line 530
    :cond_6
    iput p1, p0, Lcom/miui/internal/app/c;->dd:I

    goto :goto_1

    :cond_7
    move v5, v6

    .line 547
    goto :goto_3

    :cond_8
    move v4, p2

    goto :goto_2
.end method

.method public onPageSelected(I)V
    .locals 0

    .prologue
    .line 555
    return-void
.end method
