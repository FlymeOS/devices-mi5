.class public Lmiui/widget/AnimatedImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static final Nu:I = 0x38

.field private static final Nv:I = 0x20

.field private static final tW:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;


# instance fields
.field private Nw:Landroid/graphics/drawable/Drawable;

.field private Nx:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    move-result-object v0

    sput-object v0, Lmiui/widget/AnimatedImageView;->tW:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method private bx()V
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lmiui/widget/AnimatedImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->stop()V

    .line 41
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/AnimatedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    iput-object v0, p0, Lmiui/widget/AnimatedImageView;->Nw:Landroid/graphics/drawable/Drawable;

    .line 45
    sget-object v1, Lmiui/widget/AnimatedImageView;->tW:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    const/16 v2, 0x38

    invoke-virtual {v1, v0, v2}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesCount(Landroid/graphics/drawable/Drawable;I)V

    .line 46
    sget-object v1, Lmiui/widget/AnimatedImageView;->tW:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesDuration(Landroid/graphics/drawable/Drawable;I)V

    .line 50
    :goto_0
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->dJ()V

    .line 51
    return-void

    .line 48
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/AnimatedImageView;->Nw:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private dJ()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lmiui/widget/AnimatedImageView;->Nw:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lmiui/widget/AnimatedImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmiui/widget/AnimatedImageView;->Nx:Z

    if-eqz v0, :cond_1

    .line 56
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->start()V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->stop()V

    goto :goto_0
.end method

.method private start()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lmiui/widget/AnimatedImageView;->Nw:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lmiui/widget/AnimatedImageView;->Nw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lmiui/widget/AnimatedImageView;->tW:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    iget-object v1, p0, Lmiui/widget/AnimatedImageView;->Nw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->start(Landroid/graphics/drawable/Drawable;)V

    .line 104
    :cond_0
    return-void
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lmiui/widget/AnimatedImageView;->Nw:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lmiui/widget/AnimatedImageView;->Nw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lmiui/widget/AnimatedImageView;->tW:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    iget-object v1, p0, Lmiui/widget/AnimatedImageView;->Nw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->stop(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 78
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->dJ()V

    .line 79
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 84
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->dJ()V

    .line 85
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 95
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->dJ()V

    .line 96
    return-void
.end method

.method public setAnimating(Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lmiui/widget/AnimatedImageView;->Nx:Z

    .line 89
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->dJ()V

    .line 90
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->bx()V

    .line 67
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->bx()V

    .line 73
    return-void
.end method
