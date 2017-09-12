.class Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativePositionEventHandlerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .locals 6
    .param p2, "track"    # Landroid/media/AudioTrack;
    .param p3, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2402
    iput-object p1, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->this$0:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2405
    if-eqz p4, :cond_0

    .line 2406
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 2413
    .local v2, "looper":Landroid/os/Looper;
    :goto_0
    if-eqz v2, :cond_1

    .line 2415
    new-instance v0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;-><init>(Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    iput-object v0, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 2441
    :goto_1
    return-void

    .line 2409
    .end local v2    # "looper":Landroid/os/Looper;
    :cond_0
    # getter for: Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;
    invoke-static {p1}, Landroid/media/AudioTrack;->access$000(Landroid/media/AudioTrack;)Landroid/os/Looper;

    move-result-object v2

    .restart local v2    # "looper":Landroid/os/Looper;
    goto :goto_0

    .line 2439
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_1
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2444
    iget-object v0, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
