.class Lmiui/maml/SoundManager$1;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/SoundManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/SoundManager;


# direct methods
.method constructor <init>(Lmiui/maml/SoundManager;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lmiui/maml/SoundManager$1;->this$0:Lmiui/maml/SoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 96
    iget-object v0, p0, Lmiui/maml/SoundManager$1;->this$0:Lmiui/maml/SoundManager;

    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0x8

    const/4 v3, 0x3

    const/16 v4, 0x64

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    # setter for: Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0, v1}, Lmiui/maml/SoundManager;->access$002(Lmiui/maml/SoundManager;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 97
    iget-object v0, p0, Lmiui/maml/SoundManager$1;->this$0:Lmiui/maml/SoundManager;

    # getter for: Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lmiui/maml/SoundManager;->access$000(Lmiui/maml/SoundManager;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/SoundManager$1;->this$0:Lmiui/maml/SoundManager;

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 98
    iget-object v0, p0, Lmiui/maml/SoundManager$1;->this$0:Lmiui/maml/SoundManager;

    # getter for: Lmiui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;
    invoke-static {v0}, Lmiui/maml/SoundManager;->access$100(Lmiui/maml/SoundManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lmiui/maml/SoundManager$1;->this$0:Lmiui/maml/SoundManager;

    const/4 v2, 0x1

    # setter for: Lmiui/maml/SoundManager;->mInitialized:Z
    invoke-static {v0, v2}, Lmiui/maml/SoundManager;->access$202(Lmiui/maml/SoundManager;Z)Z

    .line 100
    iget-object v0, p0, Lmiui/maml/SoundManager$1;->this$0:Lmiui/maml/SoundManager;

    # getter for: Lmiui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;
    invoke-static {v0}, Lmiui/maml/SoundManager;->access$100(Lmiui/maml/SoundManager;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 101
    monitor-exit v1

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
