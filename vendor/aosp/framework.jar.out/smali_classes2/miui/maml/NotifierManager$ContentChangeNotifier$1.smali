.class Lmiui/maml/NotifierManager$ContentChangeNotifier$1;
.super Landroid/database/ContentObserver;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/NotifierManager$ContentChangeNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/NotifierManager$ContentChangeNotifier;


# direct methods
.method constructor <init>(Lmiui/maml/NotifierManager$ContentChangeNotifier;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 391
    iput-object p1, p0, Lmiui/maml/NotifierManager$ContentChangeNotifier$1;->this$0:Lmiui/maml/NotifierManager$ContentChangeNotifier;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    .line 394
    # getter for: Lmiui/maml/NotifierManager;->DBG:Z
    invoke-static {}, Lmiui/maml/NotifierManager;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const-string v0, "NotifierManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/NotifierManager$ContentChangeNotifier$1;->this$0:Lmiui/maml/NotifierManager$ContentChangeNotifier;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    iget-object v0, p0, Lmiui/maml/NotifierManager$ContentChangeNotifier$1;->this$0:Lmiui/maml/NotifierManager$ContentChangeNotifier;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v3, v1}, Lmiui/maml/NotifierManager$ContentChangeNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 398
    return-void
.end method
