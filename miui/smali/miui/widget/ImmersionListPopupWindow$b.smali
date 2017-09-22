.class Lmiui/widget/ImmersionListPopupWindow$b;
.super Landroid/graphics/drawable/StateListDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ImmersionListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic RR:Lmiui/widget/ImmersionListPopupWindow;

.field private RY:F

.field private RZ:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lmiui/widget/ImmersionListPopupWindow;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 381
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow$b;->RR:Lmiui/widget/ImmersionListPopupWindow;

    .line 382
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 384
    invoke-static {p1}, Lmiui/widget/ImmersionListPopupWindow;->d(Lmiui/widget/ImmersionListPopupWindow;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$attr;->immersionWindowFooterBackground:I

    invoke-static {v0, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$b;->RZ:Landroid/graphics/drawable/Drawable;

    .line 386
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_OLED:Z

    if-eqz v0, :cond_0

    .line 387
    invoke-static {p1}, Lmiui/widget/ImmersionListPopupWindow;->d(Lmiui/widget/ImmersionListPopupWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$drawable;->immersion_window_footer_background_oled_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$b;->RZ:Landroid/graphics/drawable/Drawable;

    .line 391
    :cond_0
    if-nez p2, :cond_1

    .line 392
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Lmiui/widget/ImmersionListPopupWindow;->d(Lmiui/widget/ImmersionListPopupWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 394
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0, p2}, Lmiui/widget/ImmersionListPopupWindow$b;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 395
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 404
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 405
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$b;->RR:Lmiui/widget/ImmersionListPopupWindow;

    invoke-static {v0}, Lmiui/widget/ImmersionListPopupWindow;->e(Lmiui/widget/ImmersionListPopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow$b;->RR:Lmiui/widget/ImmersionListPopupWindow;

    invoke-static {v1}, Lmiui/widget/ImmersionListPopupWindow;->f(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lmiui/widget/ImmersionListPopupWindow$b;->RY:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 406
    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow$b;->RR:Lmiui/widget/ImmersionListPopupWindow;

    invoke-static {v1}, Lmiui/widget/ImmersionListPopupWindow;->e(Lmiui/widget/ImmersionListPopupWindow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/widget/ImmersionListPopupWindow$b;->RR:Lmiui/widget/ImmersionListPopupWindow;

    invoke-static {v3}, Lmiui/widget/ImmersionListPopupWindow;->e(Lmiui/widget/ImmersionListPopupWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 407
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 408
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 410
    invoke-virtual {p0}, Lmiui/widget/ImmersionListPopupWindow$b;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 411
    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow$b;->RZ:Landroid/graphics/drawable/Drawable;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 412
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$b;->RZ:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lmiui/widget/ImmersionListPopupWindow$b;->RY:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 413
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$b;->RZ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 414
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 418
    const/4 v0, -0x3

    return v0
.end method

.method public setRangeRatio(F)V
    .locals 0

    .prologue
    .line 398
    iput p1, p0, Lmiui/widget/ImmersionListPopupWindow$b;->RY:F

    .line 399
    invoke-virtual {p0}, Lmiui/widget/ImmersionListPopupWindow$b;->invalidateSelf()V

    .line 400
    return-void
.end method
