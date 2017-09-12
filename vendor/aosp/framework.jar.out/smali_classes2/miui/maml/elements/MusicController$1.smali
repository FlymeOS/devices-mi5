.class Lmiui/maml/elements/MusicController$1;
.super Ljava/lang/Object;
.source "MusicController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/MusicController;


# direct methods
.method constructor <init>(Lmiui/maml/elements/MusicController;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lmiui/maml/elements/MusicController$1;->this$0:Lmiui/maml/elements/MusicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 38
    instance-of v1, p2, Lmiui/maml/elements/MusicListenerService$RCBinder;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 39
    check-cast v0, Lmiui/maml/elements/MusicListenerService$RCBinder;

    .line 40
    .local v0, "binder":Lmiui/maml/elements/MusicListenerService$RCBinder;
    iget-object v1, p0, Lmiui/maml/elements/MusicController$1;->this$0:Lmiui/maml/elements/MusicController;

    invoke-virtual {v0}, Lmiui/maml/elements/MusicListenerService$RCBinder;->getService()Lmiui/maml/elements/MusicListenerService;

    move-result-object v2

    # setter for: Lmiui/maml/elements/MusicController;->mRCService:Lmiui/maml/elements/MusicListenerService;
    invoke-static {v1, v2}, Lmiui/maml/elements/MusicController;->access$002(Lmiui/maml/elements/MusicController;Lmiui/maml/elements/MusicListenerService;)Lmiui/maml/elements/MusicListenerService;

    .line 41
    iget-object v1, p0, Lmiui/maml/elements/MusicController$1;->this$0:Lmiui/maml/elements/MusicController;

    # getter for: Lmiui/maml/elements/MusicController;->mRCService:Lmiui/maml/elements/MusicListenerService;
    invoke-static {v1}, Lmiui/maml/elements/MusicController;->access$000(Lmiui/maml/elements/MusicController;)Lmiui/maml/elements/MusicListenerService;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/elements/MusicController$1;->this$0:Lmiui/maml/elements/MusicController;

    # getter for: Lmiui/maml/elements/MusicController;->mClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;
    invoke-static {v2}, Lmiui/maml/elements/MusicController;->access$100(Lmiui/maml/elements/MusicController;)Landroid/media/RemoteController$OnClientUpdateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/elements/MusicListenerService;->registerClientUpdateListener(Landroid/media/RemoteController$OnClientUpdateListener;)V

    .line 43
    .end local v0    # "binder":Lmiui/maml/elements/MusicListenerService$RCBinder;
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicController$1;->this$0:Lmiui/maml/elements/MusicController;

    # getter for: Lmiui/maml/elements/MusicController;->mRCService:Lmiui/maml/elements/MusicListenerService;
    invoke-static {v0}, Lmiui/maml/elements/MusicController;->access$000(Lmiui/maml/elements/MusicController;)Lmiui/maml/elements/MusicListenerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lmiui/maml/elements/MusicController$1;->this$0:Lmiui/maml/elements/MusicController;

    # getter for: Lmiui/maml/elements/MusicController;->mRCService:Lmiui/maml/elements/MusicListenerService;
    invoke-static {v0}, Lmiui/maml/elements/MusicController;->access$000(Lmiui/maml/elements/MusicController;)Lmiui/maml/elements/MusicListenerService;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicController$1;->this$0:Lmiui/maml/elements/MusicController;

    # getter for: Lmiui/maml/elements/MusicController;->mClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;
    invoke-static {v1}, Lmiui/maml/elements/MusicController;->access$100(Lmiui/maml/elements/MusicController;)Landroid/media/RemoteController$OnClientUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/MusicListenerService;->unregisterClientUpdateListener(Landroid/media/RemoteController$OnClientUpdateListener;)V

    .line 49
    :cond_0
    return-void
.end method
