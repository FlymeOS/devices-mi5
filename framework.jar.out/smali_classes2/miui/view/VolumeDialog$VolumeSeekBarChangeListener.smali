.class final Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeSeekBarChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method private constructor <init>(Lmiui/view/VolumeDialog;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/view/VolumeDialog;
    .param p2, "x1"    # Lmiui/view/VolumeDialog$1;

    .prologue
    .line 706
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;-><init>(Lmiui/view/VolumeDialog;)V

    return-void
.end method

.method private getVolumeRow(Landroid/widget/SeekBar;)Lmiui/view/VolumeDialog$VolumeRow;
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 708
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lmiui/view/VolumeDialog$VolumeRow;

    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumeDialog$VolumeRow;

    .line 711
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 716
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;->getVolumeRow(Landroid/widget/SeekBar;)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v1

    .line 717
    .local v1, "row":Lmiui/view/VolumeDialog$VolumeRow;
    if-nez v1, :cond_1

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    if-eqz p3, :cond_0

    .line 723
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->ss:Lmiui/view/VolumeDialog$StreamState;
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1500(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/view/VolumeDialog$StreamState;

    move-result-object v3

    # getter for: Lmiui/view/VolumeDialog$StreamState;->levelMin:I
    invoke-static {v3}, Lmiui/view/VolumeDialog$StreamState;->access$4000(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v3

    if-lez v3, :cond_2

    .line 724
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->ss:Lmiui/view/VolumeDialog$StreamState;
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1500(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/view/VolumeDialog$StreamState;

    move-result-object v3

    # getter for: Lmiui/view/VolumeDialog$StreamState;->levelMin:I
    invoke-static {v3}, Lmiui/view/VolumeDialog$StreamState;->access$4000(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v3

    mul-int/lit8 v0, v3, 0x64

    .line 725
    .local v0, "minProgress":I
    if-ge p2, v0, :cond_2

    .line 726
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 729
    .end local v0    # "minProgress":I
    :cond_2
    # invokes: Lmiui/view/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I
    invoke-static {p1, p2}, Lmiui/view/VolumeDialog;->access$4100(Landroid/widget/SeekBar;I)I

    move-result v2

    .line 730
    .local v2, "userLevel":I
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->ss:Lmiui/view/VolumeDialog$StreamState;
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1500(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/view/VolumeDialog$StreamState;

    move-result-object v3

    # getter for: Lmiui/view/VolumeDialog$StreamState;->level:I
    invoke-static {v3}, Lmiui/view/VolumeDialog$StreamState;->access$1600(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v3

    if-ne v3, v2, :cond_3

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->ss:Lmiui/view/VolumeDialog$StreamState;
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1500(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/view/VolumeDialog$StreamState;

    move-result-object v3

    # getter for: Lmiui/view/VolumeDialog$StreamState;->muted:Z
    invoke-static {v3}, Lmiui/view/VolumeDialog$StreamState;->access$1900(Lmiui/view/VolumeDialog$StreamState;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v2, :cond_0

    .line 731
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->userAttempt:J
    invoke-static {v1, v4, v5}, Lmiui/view/VolumeDialog$VolumeRow;->access$2202(Lmiui/view/VolumeDialog$VolumeRow;J)J

    .line 732
    const-string v3, "VolumeDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VolumeBar:onProgressChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v3, p0, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;
    invoke-static {v3}, Lmiui/view/VolumeDialog;->access$4200(Lmiui/view/VolumeDialog;)Landroid/media/AudioManager;

    move-result-object v3

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v4

    const/high16 v5, 0x100000

    invoke-virtual {v3, v4, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 739
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;->getVolumeRow(Landroid/widget/SeekBar;)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v0

    .line 740
    .local v0, "row":Lmiui/view/VolumeDialog$VolumeRow;
    if-nez v0, :cond_0

    .line 747
    :goto_0
    return-void

    .line 744
    :cond_0
    # getter for: Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;
    invoke-static {}, Lmiui/view/VolumeDialog;->access$4300()Ljava/util/Map;

    move-result-object v1

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->iconsMapKey:I
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$600(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumeDialog$VolumeIconRes;

    iget v1, v1, Lmiui/view/VolumeDialog$VolumeIconRes;->selectedIconRes:I

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1202(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 745
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$1100(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$1200(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 746
    const/4 v1, 0x1

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->tracking:Z
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2102(Lmiui/view/VolumeDialog$VolumeRow;Z)Z

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 751
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;->getVolumeRow(Landroid/widget/SeekBar;)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v0

    .line 752
    .local v0, "row":Lmiui/view/VolumeDialog$VolumeRow;
    if-nez v0, :cond_1

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    # getter for: Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;
    invoke-static {}, Lmiui/view/VolumeDialog;->access$4300()Ljava/util/Map;

    move-result-object v2

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->iconsMapKey:I
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$600(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    iget v2, v2, Lmiui/view/VolumeDialog$VolumeIconRes;->normalIconRes:I

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static {v0, v2}, Lmiui/view/VolumeDialog$VolumeRow;->access$1202(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 757
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$1100(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v2

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$1200(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 759
    const/4 v2, 0x0

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->tracking:Z
    invoke-static {v0, v2}, Lmiui/view/VolumeDialog$VolumeRow;->access$2102(Lmiui/view/VolumeDialog$VolumeRow;Z)Z

    .line 760
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->userAttempt:J
    invoke-static {v0, v2, v3}, Lmiui/view/VolumeDialog$VolumeRow;->access$2202(Lmiui/view/VolumeDialog$VolumeRow;J)J

    .line 761
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    # invokes: Lmiui/view/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I
    invoke-static {p1, v2}, Lmiui/view/VolumeDialog;->access$4100(Landroid/widget/SeekBar;I)I

    move-result v1

    .line 762
    .local v1, "userLevel":I
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->ss:Lmiui/view/VolumeDialog$StreamState;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$1500(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/view/VolumeDialog$StreamState;

    move-result-object v2

    # getter for: Lmiui/view/VolumeDialog$StreamState;->level:I
    invoke-static {v2}, Lmiui/view/VolumeDialog$StreamState;->access$1600(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 763
    iget-object v2, p0, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;
    invoke-static {v2}, Lmiui/view/VolumeDialog;->access$100(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v2

    iget-object v3, p0, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;
    invoke-static {v3}, Lmiui/view/VolumeDialog;->access$100(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v0}, Lmiui/view/VolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lmiui/view/VolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
