.class Lcom/miui/internal/widget/SearchActionModeView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic vj:Lcom/miui/internal/widget/SearchActionModeView;

.field private vk:I


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 564
    if-eqz p1, :cond_0

    .line 566
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 567
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->b(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 568
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->b(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vk:I

    .line 574
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->b(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vk:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->a(Lcom/miui/internal/widget/SearchActionModeView;I)I

    .line 576
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->d(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->b(Lcom/miui/internal/widget/SearchActionModeView;I)I

    .line 577
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 578
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 580
    :cond_0
    return-void

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->b(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vk:I

    .line 572
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$drawable;->edit_text_search_input_bg_light:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onStop(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 618
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 619
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setAlpha(F)V

    .line 621
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-nez v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 623
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->b(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vk:I

    add-int/2addr v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 625
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    :cond_1
    if-eqz p1, :cond_4

    .line 628
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_2

    .line 629
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 630
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->b(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vk:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 631
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 637
    :cond_2
    :goto_1
    return-void

    .line 623
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 634
    :cond_4
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$drawable;->edit_text_search_normal_light:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 635
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1
.end method

.method public onUpdate(ZF)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 584
    if-nez p1, :cond_0

    .line 585
    sub-float p2, v4, p2

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 588
    if-eqz v1, :cond_2

    const/4 v0, -0x1

    .line 589
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/SearchActionModeView;->getWidth()I

    move-result v2

    .line 591
    sget-boolean v3, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v3, :cond_4

    .line 592
    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->d(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v4}, Lcom/miui/internal/widget/SearchActionModeView;->e(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    sub-float/2addr v3, v4

    .line 593
    iget-object v4, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v4}, Lcom/miui/internal/widget/SearchActionModeView;->b(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v4

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 594
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingEnd()I

    move-result v0

    sub-int v0, v2, v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->e(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 595
    if-eqz v1, :cond_3

    .line 596
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLeft(I)V

    .line 607
    :goto_1
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->f(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v0

    if-lez v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->g(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->f(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v3}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v4}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/internal/widget/SearchActionModeView;->setPadding(IIII)V

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setAlpha(F)V

    .line 613
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0, p2}, Lcom/miui/internal/widget/SearchActionModeView;->setAlpha(F)V

    .line 614
    return-void

    .line 588
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 598
    :cond_3
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setRight(I)V

    goto :goto_1

    .line 601
    :cond_4
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->e(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->d(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 602
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->b(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v2

    int-to-float v3, v0

    mul-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 603
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->d(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v4, p2

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->e(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 604
    if-eqz p1, :cond_5

    .line 605
    :goto_2
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTranslationX(F)V

    goto/16 :goto_1

    .line 604
    :cond_5
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$d;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->e(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    goto :goto_2
.end method
