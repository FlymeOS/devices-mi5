.class Lmiui/widget/DropDownPopupWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qh:Lmiui/widget/DropDownPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/DropDownPopupWindow;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$1;->Qh:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$1;->Qh:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->a(Lmiui/widget/DropDownPopupWindow;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 45
    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow$1;->Qh:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v1}, Lmiui/widget/DropDownPopupWindow;->b(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContainerController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow$1;->Qh:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v1}, Lmiui/widget/DropDownPopupWindow;->b(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContainerController;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow$1;->Qh:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v2}, Lmiui/widget/DropDownPopupWindow;->c(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$a;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lmiui/widget/DropDownPopupWindow$ContainerController;->onAniamtionUpdate(Landroid/view/View;F)V

    .line 48
    :cond_0
    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow$1;->Qh:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v1}, Lmiui/widget/DropDownPopupWindow;->d(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContentController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 49
    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow$1;->Qh:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v1}, Lmiui/widget/DropDownPopupWindow;->d(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContentController;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow$1;->Qh:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v2}, Lmiui/widget/DropDownPopupWindow;->e(Lmiui/widget/DropDownPopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lmiui/widget/DropDownPopupWindow$ContentController;->onAniamtionUpdate(Landroid/view/View;F)V

    .line 51
    :cond_1
    return-void
.end method
