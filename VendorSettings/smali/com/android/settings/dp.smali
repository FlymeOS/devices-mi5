.class Lcom/android/settings/dp;
.super Ljava/lang/Object;
.source "HighlightingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic nN:Landroid/graphics/drawable/Drawable;

.field final synthetic nO:Lcom/android/settings/HighlightingFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/HighlightingFragment;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/dp;->nO:Lcom/android/settings/HighlightingFragment;

    iput-object p2, p0, Lcom/android/settings/dp;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settings/dp;->nN:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/dp;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 89
    iget-object v1, p0, Lcom/android/settings/dp;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 90
    iget-object v2, p0, Lcom/android/settings/dp;->nN:Landroid/graphics/drawable/Drawable;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/dp;->val$view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/dp;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 93
    return-void
.end method
