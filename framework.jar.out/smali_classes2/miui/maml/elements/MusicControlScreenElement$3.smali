.class Lmiui/maml/elements/MusicControlScreenElement$3;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/MusicControlScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 664
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mPlaying:Z
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2300(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$1000(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/media/RemoteController$MetadataEditor;

    move-result-object v4

    if-nez v4, :cond_1

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$1000(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/media/RemoteController$MetadataEditor;

    move-result-object v4

    const/16 v5, 0x9

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/RemoteController$MetadataEditor;->getLong(IJ)J

    move-result-wide v0

    .line 669
    .local v0, "duration":J
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$1700(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicController;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/elements/MusicController;->getEstimatedMediaPosition()J

    move-result-wide v2

    .line 670
    .local v2, "position":J
    cmp-long v4, v0, v8

    if-lez v4, :cond_0

    cmp-long v4, v2, v8

    if-ltz v4, :cond_0

    .line 673
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2400(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v4

    long-to-double v6, v0

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 674
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2500(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v4

    long-to-double v6, v2

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 676
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$2600(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$1500(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicLyricParser$Lyric;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 677
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->updateLyricVar(J)V
    invoke-static {v4, v2, v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$2700(Lmiui/maml/elements/MusicControlScreenElement;J)V

    .line 679
    :cond_2
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v4}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    .line 681
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v4}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressInterval:I
    invoke-static {v5}, Lmiui/maml/elements/MusicControlScreenElement;->access$2800(Lmiui/maml/elements/MusicControlScreenElement;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
