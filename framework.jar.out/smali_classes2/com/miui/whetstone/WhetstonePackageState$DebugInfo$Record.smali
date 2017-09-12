.class Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;
.super Ljava/lang/Object;
.source "WhetstonePackageState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Record"
.end annotation


# instance fields
.field mCaller:Ljava/lang/String;

.field mTime:J

.field mType:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;->mTime:J

    .line 412
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;->mType:I

    .line 416
    iput p1, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;->mType:I

    .line 417
    iput-object p2, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;->mCaller:Ljava/lang/String;

    .line 418
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 422
    const-string v0, ""

    .line 423
    .local v0, "prefix":Ljava/lang/String;
    iget v1, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 438
    :goto_0
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;->mTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;->mTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":  Block "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;->mCaller:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 425
    :pswitch_1
    const-string v0, "Activity"

    .line 426
    goto :goto_0

    .line 428
    :pswitch_2
    const-string v0, "Service"

    .line 429
    goto :goto_0

    .line 431
    :pswitch_3
    const-string v0, "ContentProvider"

    .line 432
    goto :goto_0

    .line 434
    :pswitch_4
    const-string v0, "BroadcastReceiver"

    .line 435
    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
