.class Lcom/xiaomi/smack/d/l;
.super Ljava/lang/Object;
.source "TrafficUtils.java"


# instance fields
.field public bjU:I

.field public bjW:Ljava/lang/String;

.field public bjY:I

.field public bjZ:J

.field public messageTs:J

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JIILjava/lang/String;J)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/d/l;->packageName:Ljava/lang/String;

    .line 210
    iput-wide v2, p0, Lcom/xiaomi/smack/d/l;->messageTs:J

    .line 211
    iput v1, p0, Lcom/xiaomi/smack/d/l;->bjU:I

    .line 212
    iput v1, p0, Lcom/xiaomi/smack/d/l;->bjY:I

    .line 213
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/d/l;->bjW:Ljava/lang/String;

    .line 214
    iput-wide v2, p0, Lcom/xiaomi/smack/d/l;->bjZ:J

    .line 218
    iput-object p1, p0, Lcom/xiaomi/smack/d/l;->packageName:Ljava/lang/String;

    .line 219
    iput-wide p2, p0, Lcom/xiaomi/smack/d/l;->messageTs:J

    .line 220
    iput p4, p0, Lcom/xiaomi/smack/d/l;->bjU:I

    .line 221
    iput p5, p0, Lcom/xiaomi/smack/d/l;->bjY:I

    .line 222
    iput-object p6, p0, Lcom/xiaomi/smack/d/l;->bjW:Ljava/lang/String;

    .line 223
    iput-wide p7, p0, Lcom/xiaomi/smack/d/l;->bjZ:J

    .line 224
    return-void
.end method


# virtual methods
.method public b(Lcom/xiaomi/smack/d/l;)Z
    .locals 4

    .prologue
    .line 227
    iget-object v0, p1, Lcom/xiaomi/smack/d/l;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/smack/d/l;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/xiaomi/smack/d/l;->bjW:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/smack/d/l;->bjW:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/xiaomi/smack/d/l;->bjU:I

    iget v1, p0, Lcom/xiaomi/smack/d/l;->bjU:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/xiaomi/smack/d/l;->bjY:I

    iget v1, p0, Lcom/xiaomi/smack/d/l;->bjY:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p1, Lcom/xiaomi/smack/d/l;->messageTs:J

    iget-wide v2, p0, Lcom/xiaomi/smack/d/l;->messageTs:J

    sub-long/2addr v0, v2

    .line 229
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 230
    :cond_0
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
