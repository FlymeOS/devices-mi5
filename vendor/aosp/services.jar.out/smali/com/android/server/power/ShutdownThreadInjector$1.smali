.class final Lcom/android/server/power/ShutdownThreadInjector$1;
.super Ljava/lang/Object;
.source "ShutdownThreadInjector.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThreadInjector;->playShutdownMusicImpl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$actionDoneSync:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/server/power/ShutdownThreadInjector$1;->val$actionDoneSync:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/server/power/ShutdownThreadInjector$1;->val$actionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    const/4 v0, 0x0

    :try_start_0
    # setter for: Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z
    invoke-static {v0}, Lcom/android/server/power/ShutdownThreadInjector;->access$002(Z)Z

    .line 137
    iget-object v0, p0, Lcom/android/server/power/ShutdownThreadInjector$1;->val$actionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 138
    monitor-exit v1

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
