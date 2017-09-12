.class Lcom/android/server/policy/MiuiGlobalActions$2;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MiuiGlobalActions;->showDialog(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiGlobalActions;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/server/policy/MiuiGlobalActions$2;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 209
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 211
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions$2;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    # getter for: Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;
    invoke-static {v1}, Lcom/android/server/policy/MiuiGlobalActions;->access$300(Lcom/android/server/policy/MiuiGlobalActions;)Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    const-string v2, "finish"

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 214
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_0

    .line 218
    const/4 v0, 0x0

    goto :goto_0
.end method
