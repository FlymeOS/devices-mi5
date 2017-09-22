.class Lmiui/widget/DropDownPopupWindow$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 53
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$2;->Qh:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ei()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$2;->Qh:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->f(Lmiui/widget/DropDownPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$2;->Qh:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->g(Lmiui/widget/DropDownPopupWindow;)V

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow$2;->ei()V

    .line 76
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow$2;->ei()V

    .line 71
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$2;->Qh:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->f(Lmiui/widget/DropDownPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$2;->Qh:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->h(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$Controller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$2;->Qh:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->h(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$Controller;

    move-result-object v0

    invoke-interface {v0}, Lmiui/widget/DropDownPopupWindow$Controller;->onDismiss()V

    .line 66
    :cond_0
    return-void
.end method
