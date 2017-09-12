.class Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;
.super Ljava/lang/Object;
.source "WhetstonePackageState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/WhetstonePackageState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;
    }
.end annotation


# static fields
.field private static final MAX_DEBUG_SIZE:I = 0x64


# instance fields
.field mADeniedCount:I

.field private mDebugList:Lcom/miui/whetstone/WhetstonePackageState$LinkedRingbuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/whetstone/WhetstonePackageState$LinkedRingbuffer",
            "<",
            "Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;",
            ">;"
        }
    .end annotation
.end field

.field mPDeniedCount:I

.field mRDeniedCount:I

.field mSDeniedCount:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mADeniedCount:I

    .line 356
    iput v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mSDeniedCount:I

    .line 357
    iput v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mPDeniedCount:I

    .line 358
    iput v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mRDeniedCount:I

    .line 360
    new-instance v0, Lcom/miui/whetstone/WhetstonePackageState$LinkedRingbuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/miui/whetstone/WhetstonePackageState$LinkedRingbuffer;-><init>(I)V

    iput-object v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mDebugList:Lcom/miui/whetstone/WhetstonePackageState$LinkedRingbuffer;

    .line 410
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/whetstone/WhetstonePackageState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/whetstone/WhetstonePackageState$1;

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;-><init>()V

    return-void
.end method


# virtual methods
.method addDeniedRecord(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 363
    packed-switch p1, :pswitch_data_0

    .line 378
    :goto_0
    :pswitch_0
    sget-boolean v0, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mDebugList:Lcom/miui/whetstone/WhetstonePackageState$LinkedRingbuffer;

    new-instance v1, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;

    invoke-direct {v1, p1, p2}, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/WhetstonePackageState$LinkedRingbuffer;->add(Ljava/lang/Object;)V

    .line 381
    :cond_0
    return-void

    .line 365
    :pswitch_1
    iget v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mADeniedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mADeniedCount:I

    goto :goto_0

    .line 368
    :pswitch_2
    iget v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mSDeniedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mSDeniedCount:I

    goto :goto_0

    .line 371
    :pswitch_3
    iget v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mPDeniedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mPDeniedCount:I

    goto :goto_0

    .line 374
    :pswitch_4
    iget v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mRDeniedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mRDeniedCount:I

    goto :goto_0

    .line 363
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

.method getCount(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 384
    packed-switch p1, :pswitch_data_0

    .line 394
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 386
    :pswitch_1
    iget v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mADeniedCount:I

    goto :goto_0

    .line 388
    :pswitch_2
    iget v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mSDeniedCount:I

    goto :goto_0

    .line 390
    :pswitch_3
    iget v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mPDeniedCount:I

    goto :goto_0

    .line 392
    :pswitch_4
    iget v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mRDeniedCount:I

    goto :goto_0

    .line 384
    nop

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

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total block time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mADeniedCount:I

    iget v2, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mSDeniedCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mPDeniedCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mRDeniedCount:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Activity block time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mADeniedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Service block time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mSDeniedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ContentProvider block time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mPDeniedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BroadcastReceiver block time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mRDeniedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->mDebugList:Lcom/miui/whetstone/WhetstonePackageState$LinkedRingbuffer;

    invoke-virtual {v1}, Lcom/miui/whetstone/WhetstonePackageState$LinkedRingbuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
