.class Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;
.super Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ScreenElementRoot$ExtraResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Resource"
.end annotation


# instance fields
.field mPath:Ljava/lang/String;

.field final synthetic this$0:Lmiui/maml/ScreenElementRoot$ExtraResource;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->this$0:Lmiui/maml/ScreenElementRoot$ExtraResource;

    invoke-direct {p0, p1}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V

    .line 798
    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V
    .locals 2
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "type"    # Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    .prologue
    .line 800
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->this$0:Lmiui/maml/ScreenElementRoot$ExtraResource;

    .line 801
    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 802
    sget-object v0, Lmiui/maml/ScreenElementRoot$3;->$SwitchMap$miui$maml$ScreenElementRoot$ExtraResource$MetricsType:[I

    invoke-virtual {p3}, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 810
    :goto_0
    return-void

    .line 804
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "den"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    goto :goto_0

    .line 807
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    goto :goto_0

    .line 802
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onParseInfo([Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # [Ljava/lang/String;

    .prologue
    .line 813
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    aget-object v0, p1, v0

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    .line 814
    return-void

    .line 813
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
