.class Lmiui/view/MiuiKeyBoardView$3;
.super Ljava/lang/Object;
.source "MiuiKeyBoardView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiKeyBoardView;->showPreviewAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/MiuiKeyBoardView;


# direct methods
.method constructor <init>(Lmiui/view/MiuiKeyBoardView;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lmiui/view/MiuiKeyBoardView$3;->this$0:Lmiui/view/MiuiKeyBoardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 404
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 405
    .local v0, "value":F
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView$3;->this$0:Lmiui/view/MiuiKeyBoardView;

    # getter for: Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;
    invoke-static {v1}, Lmiui/view/MiuiKeyBoardView;->access$200(Lmiui/view/MiuiKeyBoardView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 406
    return-void
.end method
