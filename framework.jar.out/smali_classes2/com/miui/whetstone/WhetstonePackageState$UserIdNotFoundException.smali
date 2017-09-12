.class public Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;
.super Ljava/lang/Exception;
.source "WhetstonePackageState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/WhetstonePackageState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserIdNotFoundException"
.end annotation


# instance fields
.field private mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserId-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 236
    iput p1, p0, Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;->mUserId:I

    .line 237
    return-void
.end method


# virtual methods
.method public getUserId()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;->mUserId:I

    return v0
.end method
