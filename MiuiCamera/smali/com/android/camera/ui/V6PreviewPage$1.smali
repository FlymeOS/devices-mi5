.class Lcom/android/camera/ui/V6PreviewPage$1;
.super Ljava/lang/Object;
.source "V6PreviewPage.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6PreviewPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6PreviewPage;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6PreviewPage;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 63
    if-ne p2, p6, :cond_1

    if-ne p4, p8, :cond_1

    if-ne p3, p7, :cond_1

    if-ne p5, p9, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    # getter for: Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/ui/V6PreviewPage;->access$000(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    # getter for: Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/ui/V6PreviewPage;->access$100(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    # invokes: Lcom/android/camera/ui/V6PreviewPage;->createOrUpdateAnimatorListener()V
    invoke-static {v0}, Lcom/android/camera/ui/V6PreviewPage;->access$200(Lcom/android/camera/ui/V6PreviewPage;)V

    goto :goto_0

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    # invokes: Lcom/android/camera/ui/V6PreviewPage;->createAnimation()V
    invoke-static {v0}, Lcom/android/camera/ui/V6PreviewPage;->access$300(Lcom/android/camera/ui/V6PreviewPage;)V

    goto :goto_0
.end method
