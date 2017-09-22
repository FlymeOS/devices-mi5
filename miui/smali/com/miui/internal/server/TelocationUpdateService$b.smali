.class Lcom/miui/internal/server/TelocationUpdateService$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/server/TelocationUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field public static final is:I = 0x0

.field public static final it:I = 0x1

.field public static final iu:I = 0x0

.field public static final iv:I = 0x1


# instance fields
.field public action:I

.field public description:Ljava/lang/String;

.field public iA:I

.field public iB:J

.field public iC:J

.field public iD:Ljava/lang/String;

.field public iE:Ljava/lang/String;

.field public iF:Ljava/lang/String;

.field public iG:Ljava/lang/String;

.field public iH:J

.field public ir:I

.field public iz:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/miui/internal/server/TelocationUpdateService$b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 550
    new-instance v0, Lcom/miui/internal/server/TelocationUpdateService$b;

    invoke-direct {v0}, Lcom/miui/internal/server/TelocationUpdateService$b;-><init>()V

    .line 552
    const-string v1, "result"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/internal/server/TelocationUpdateService$b;->iz:Z

    .line 553
    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$b;->description:Ljava/lang/String;

    .line 554
    iget-boolean v1, v0, Lcom/miui/internal/server/TelocationUpdateService$b;->iz:Z

    if-eqz v1, :cond_0

    .line 555
    const-string v1, "action"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/server/TelocationUpdateService$b;->action:I

    .line 557
    const-string v1, "info"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 558
    const-string v2, "serviceType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/miui/internal/server/TelocationUpdateService$b;->iA:I

    .line 559
    const-string v2, "patchType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/miui/internal/server/TelocationUpdateService$b;->ir:I

    .line 560
    const-string v2, "oldVersion"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/internal/server/TelocationUpdateService$b;->iB:J

    .line 561
    const-string v2, "newVersion"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/internal/server/TelocationUpdateService$b;->iC:J

    .line 562
    const-string v2, "oldMd5Sum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/internal/server/TelocationUpdateService$b;->iD:Ljava/lang/String;

    .line 563
    const-string v2, "newMd5Sum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/internal/server/TelocationUpdateService$b;->iE:Ljava/lang/String;

    .line 564
    const-string v2, "md5Sum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/internal/server/TelocationUpdateService$b;->iF:Ljava/lang/String;

    .line 565
    const-string v2, "fileURL"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/internal/server/TelocationUpdateService$b;->iG:Ljava/lang/String;

    .line 566
    const-string v2, "fileSize"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/internal/server/TelocationUpdateService$b;->iH:J

    .line 569
    :cond_0
    return-object v0
.end method
