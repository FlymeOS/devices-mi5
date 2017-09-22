.class public Lmiui/widget/DropDownPopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DropDownPopupWindow$ListController;,
        Lmiui/widget/DropDownPopupWindow$ViewContentController;,
        Lmiui/widget/DropDownPopupWindow$DefaultContainerController;,
        Lmiui/widget/DropDownPopupWindow$ContentController;,
        Lmiui/widget/DropDownPopupWindow$ContainerController;,
        Lmiui/widget/DropDownPopupWindow$Controller;,
        Lmiui/widget/DropDownPopupWindow$a;
    }
.end annotation


# instance fields
.field private PV:Landroid/widget/PopupWindow;

.field private PX:Lmiui/widget/DropDownPopupWindow$a;

.field private PZ:Lmiui/widget/DropDownPopupWindow$ContentController;

.field private Qa:Lmiui/widget/DropDownPopupWindow$ContainerController;

.field private Qb:Lmiui/widget/DropDownPopupWindow$Controller;

.field private Qc:I

.field private Qd:I

.field private Qe:Z

.field private Qf:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private Qg:Landroid/animation/Animator$AnimatorListener;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private oh:Landroid/view/View;

.field private uF:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/16 v0, 0x12c

    const/4 v1, 0x0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, Lmiui/widget/DropDownPopupWindow;->Qc:I

    .line 38
    iput v0, p0, Lmiui/widget/DropDownPopupWindow;->Qd:I

    .line 41
    new-instance v0, Lmiui/widget/DropDownPopupWindow$1;

    invoke-direct {v0, p0}, Lmiui/widget/DropDownPopupWindow$1;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Qf:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 53
    new-instance v0, Lmiui/widget/DropDownPopupWindow$2;

    invoke-direct {v0, p0}, Lmiui/widget/DropDownPopupWindow$2;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Qg:Landroid/animation/Animator$AnimatorListener;

    .line 247
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    .line 248
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PV:Landroid/widget/PopupWindow;

    .line 249
    new-instance v0, Lmiui/widget/DropDownPopupWindow$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiui/widget/DropDownPopupWindow$a;-><init>(Lmiui/widget/DropDownPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PX:Lmiui/widget/DropDownPopupWindow$a;

    .line 250
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PV:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 251
    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow;->eg()V

    .line 252
    return-void
.end method

.method static synthetic a(Lmiui/widget/DropDownPopupWindow;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->uF:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic b(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContainerController;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Qa:Lmiui/widget/DropDownPopupWindow$ContainerController;

    return-object v0
.end method

.method static synthetic c(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PX:Lmiui/widget/DropDownPopupWindow$a;

    return-object v0
.end method

.method private c(FFI)V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 308
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->uF:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->uF:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 312
    :cond_0
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Qa:Lmiui/widget/DropDownPopupWindow$ContainerController;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PZ:Lmiui/widget/DropDownPopupWindow$ContentController;

    if-eqz v0, :cond_2

    .line 313
    :cond_1
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->uF:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_3

    .line 314
    new-array v0, v1, [F

    aput p1, v0, v2

    aput p2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow;->uF:Landroid/animation/ValueAnimator;

    .line 318
    :goto_0
    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->uF:Landroid/animation/ValueAnimator;

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_4

    int-to-long v0, p3

    :goto_1
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 319
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->uF:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->Qf:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 320
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->uF:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->Qg:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 321
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->uF:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 323
    :cond_2
    return-void

    .line 316
    :cond_3
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->uF:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    aput p1, v1, v2

    aput p2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 318
    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method static synthetic d(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContentController;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PZ:Lmiui/widget/DropDownPopupWindow$ContentController;

    return-object v0
.end method

.method static synthetic e(Lmiui/widget/DropDownPopupWindow;)Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method private eg()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 255
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PV:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->PX:Lmiui/widget/DropDownPopupWindow$a;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 256
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PV:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 257
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PV:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 258
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PV:Landroid/widget/PopupWindow;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 259
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PV:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 260
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PV:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 261
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PV:Landroid/widget/PopupWindow;

    new-instance v1, Lmiui/widget/DropDownPopupWindow$3;

    invoke-direct {v1, p0}, Lmiui/widget/DropDownPopupWindow$3;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 275
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PX:Lmiui/widget/DropDownPopupWindow$a;

    invoke-virtual {v0, v3}, Lmiui/widget/DropDownPopupWindow$a;->setFocusableInTouchMode(Z)V

    .line 277
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PX:Lmiui/widget/DropDownPopupWindow$a;

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$color;->arrow_popup_window_dim_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownPopupWindow$a;->setBackgroundColor(I)V

    .line 278
    return-void
.end method

.method private eh()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PV:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PV:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 329
    :cond_0
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Qa:Lmiui/widget/DropDownPopupWindow$ContainerController;

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Qa:Lmiui/widget/DropDownPopupWindow$ContainerController;

    invoke-interface {v0}, Lmiui/widget/DropDownPopupWindow$ContainerController;->onDismiss()V

    .line 332
    :cond_1
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PZ:Lmiui/widget/DropDownPopupWindow$ContentController;

    if-eqz v0, :cond_2

    .line 333
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PZ:Lmiui/widget/DropDownPopupWindow$ContentController;

    invoke-interface {v0}, Lmiui/widget/DropDownPopupWindow$ContentController;->onDismiss()V

    .line 335
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/DropDownPopupWindow;->Qe:Z

    .line 336
    return-void
.end method

.method static synthetic f(Lmiui/widget/DropDownPopupWindow;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lmiui/widget/DropDownPopupWindow;->Qe:Z

    return v0
.end method

.method static synthetic g(Lmiui/widget/DropDownPopupWindow;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow;->eh()V

    return-void
.end method

.method static synthetic h(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$Controller;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Qb:Lmiui/widget/DropDownPopupWindow$Controller;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/DropDownPopupWindow;->Qe:Z

    .line 340
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget v2, p0, Lmiui/widget/DropDownPopupWindow;->Qd:I

    invoke-direct {p0, v0, v1, v2}, Lmiui/widget/DropDownPopupWindow;->c(FFI)V

    .line 341
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->oh:Landroid/view/View;

    .line 282
    return-void
.end method

.method public setContainerController(Lmiui/widget/DropDownPopupWindow$ContainerController;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->Qa:Lmiui/widget/DropDownPopupWindow$ContainerController;

    .line 128
    return-void
.end method

.method public setContentController(Lmiui/widget/DropDownPopupWindow$ContentController;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->PZ:Lmiui/widget/DropDownPopupWindow$ContentController;

    .line 131
    return-void
.end method

.method public setDropDownController(Lmiui/widget/DropDownPopupWindow$Controller;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->Qb:Lmiui/widget/DropDownPopupWindow$Controller;

    .line 135
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 285
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PV:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PV:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->oh:Landroid/view/View;

    invoke-virtual {v0, v1, v5, v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    .line 305
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PZ:Lmiui/widget/DropDownPopupWindow$ContentController;

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PZ:Lmiui/widget/DropDownPopupWindow$ContentController;

    invoke-interface {v0}, Lmiui/widget/DropDownPopupWindow$ContentController;->getContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    .line 290
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Qa:Lmiui/widget/DropDownPopupWindow$ContainerController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Qa:Lmiui/widget/DropDownPopupWindow$ContainerController;

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->PX:Lmiui/widget/DropDownPopupWindow$a;

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lmiui/widget/DropDownPopupWindow$ContainerController;->onAddContent(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 292
    :cond_1
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PX:Lmiui/widget/DropDownPopupWindow$a;

    invoke-virtual {v0}, Lmiui/widget/DropDownPopupWindow$a;->removeAllViews()V

    .line 293
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PX:Lmiui/widget/DropDownPopupWindow$a;

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lmiui/widget/DropDownPopupWindow$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    :cond_2
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Qa:Lmiui/widget/DropDownPopupWindow$ContainerController;

    if-eqz v0, :cond_3

    .line 299
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Qa:Lmiui/widget/DropDownPopupWindow$ContainerController;

    invoke-interface {v0}, Lmiui/widget/DropDownPopupWindow$ContainerController;->onShow()V

    .line 301
    :cond_3
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lmiui/widget/DropDownPopupWindow;->Qc:I

    invoke-direct {p0, v0, v1, v2}, Lmiui/widget/DropDownPopupWindow;->c(FFI)V

    .line 303
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->PV:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->oh:Landroid/view/View;

    invoke-virtual {v0, v1, v5, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method
