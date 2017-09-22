.class public Lcom/xiaomi/miui/pushads/sdk/a/b;
.super Ljava/lang/Object;
.source "MiuiAdsCell.java"


# instance fields
.field public aZA:I

.field public aZB:I

.field public aZC:J

.field public aZD:I

.field public aZE:I

.field private aZF:Ljava/lang/String;

.field public aZy:I

.field public aZz:Ljava/lang/String;

.field public id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/miui/pushads/sdk/a/b;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-wide v0, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->id:J

    iput-wide v0, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->id:J

    .line 49
    iget v0, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZy:I

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZy:I

    .line 50
    iget-object v0, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZz:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZz:Ljava/lang/String;

    .line 51
    iget v0, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZA:I

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZA:I

    .line 52
    iget v0, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZB:I

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZB:I

    .line 53
    iget-wide v0, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZC:J

    iput-wide v0, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZC:J

    .line 54
    iget v0, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZD:I

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZD:I

    .line 55
    iget-object v0, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZF:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZF:Ljava/lang/String;

    .line 56
    iget v0, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZE:I

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZE:I

    .line 57
    return-void
.end method


# virtual methods
.method public Gn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZF:Ljava/lang/String;

    return-object v0
.end method

.method public df(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZF:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public h(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 69
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->id:J

    .line 70
    const-string v0, "showType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZy:I

    .line 71
    const-string v0, "nonsense"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZA:I

    .line 72
    const-string v0, "receiveUpperBound"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZB:I

    .line 73
    const-string v0, "lastShowTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZC:J

    .line 74
    const-string v0, "multi"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZE:I

    .line 75
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    const-string v1, "id"

    iget-wide v2, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 85
    const-string v1, "showType"

    iget v2, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZy:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string v1, "nonsense"

    iget v2, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZA:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string v1, "receiveUpperBound"

    iget v2, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZB:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string v1, "lastShowTime"

    iget-wide v2, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZC:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 89
    const-string v1, "multi"

    iget v2, p0, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZE:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, ""

    return-object v0
.end method
