.class public Lcom/xiaomi/a/a/a;
.super Ljava/lang/Object;
.source "AndroidDebugger.java"

# interfaces
.implements Lcom/xiaomi/smack/a/a;


# static fields
.field public static aYh:Z


# instance fields
.field private aYi:Ljava/text/SimpleDateFormat;

.field private aYj:Lcom/xiaomi/smack/a;

.field private aYk:Lcom/xiaomi/smack/g;

.field private aYl:Lcom/xiaomi/smack/e;

.field private aYm:Ljava/io/Writer;

.field private aYn:Ljava/io/Reader;

.field private aYo:Lcom/xiaomi/smack/d/f;

.field private aYp:Lcom/xiaomi/smack/d/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/a/a/a;->aYh:Z

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/smack/a;Ljava/io/Writer;Ljava/io/Reader;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/a;->aYi:Ljava/text/SimpleDateFormat;

    .line 40
    iput-object v2, p0, Lcom/xiaomi/a/a/a;->aYj:Lcom/xiaomi/smack/a;

    .line 42
    iput-object v2, p0, Lcom/xiaomi/a/a/a;->aYk:Lcom/xiaomi/smack/g;

    .line 44
    iput-object v2, p0, Lcom/xiaomi/a/a/a;->aYl:Lcom/xiaomi/smack/e;

    .line 56
    iput-object p1, p0, Lcom/xiaomi/a/a/a;->aYj:Lcom/xiaomi/smack/a;

    .line 57
    iput-object p2, p0, Lcom/xiaomi/a/a/a;->aYm:Ljava/io/Writer;

    .line 58
    iput-object p3, p0, Lcom/xiaomi/a/a/a;->aYn:Ljava/io/Reader;

    .line 59
    invoke-direct {p0}, Lcom/xiaomi/a/a/a;->FE()V

    .line 60
    return-void
.end method

.method private FE()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Lcom/xiaomi/smack/d/a;

    iget-object v1, p0, Lcom/xiaomi/a/a/a;->aYn:Ljava/io/Reader;

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/d/a;-><init>(Ljava/io/Reader;)V

    .line 69
    new-instance v1, Lcom/xiaomi/a/a/b;

    invoke-direct {v1, p0}, Lcom/xiaomi/a/a/b;-><init>(Lcom/xiaomi/a/a/a;)V

    iput-object v1, p0, Lcom/xiaomi/a/a/a;->aYo:Lcom/xiaomi/smack/d/f;

    .line 78
    iget-object v1, p0, Lcom/xiaomi/a/a/a;->aYo:Lcom/xiaomi/smack/d/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/d/a;->a(Lcom/xiaomi/smack/d/f;)V

    .line 82
    new-instance v1, Lcom/xiaomi/smack/d/b;

    iget-object v2, p0, Lcom/xiaomi/a/a/a;->aYm:Ljava/io/Writer;

    invoke-direct {v1, v2}, Lcom/xiaomi/smack/d/b;-><init>(Ljava/io/Writer;)V

    .line 83
    new-instance v2, Lcom/xiaomi/a/a/c;

    invoke-direct {v2, p0}, Lcom/xiaomi/a/a/c;-><init>(Lcom/xiaomi/a/a/a;)V

    iput-object v2, p0, Lcom/xiaomi/a/a/a;->aYp:Lcom/xiaomi/smack/d/m;

    .line 92
    iget-object v2, p0, Lcom/xiaomi/a/a/a;->aYp:Lcom/xiaomi/smack/d/m;

    invoke-virtual {v1, v2}, Lcom/xiaomi/smack/d/b;->a(Lcom/xiaomi/smack/d/m;)V

    .line 97
    iput-object v0, p0, Lcom/xiaomi/a/a/a;->aYn:Ljava/io/Reader;

    .line 98
    iput-object v1, p0, Lcom/xiaomi/a/a/a;->aYm:Ljava/io/Writer;

    .line 105
    new-instance v0, Lcom/xiaomi/a/a/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/a/d;-><init>(Lcom/xiaomi/a/a/a;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/a;->aYk:Lcom/xiaomi/smack/g;

    .line 128
    new-instance v0, Lcom/xiaomi/a/a/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/a/e;-><init>(Lcom/xiaomi/a/a/a;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/a;->aYl:Lcom/xiaomi/smack/e;

    .line 163
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/a/a/a;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xiaomi/a/a/a;->aYi:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/a/a/a;)Lcom/xiaomi/smack/a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xiaomi/a/a/a;->aYj:Lcom/xiaomi/smack/a;

    return-object v0
.end method


# virtual methods
.method public FF()Lcom/xiaomi/smack/g;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/xiaomi/a/a/a;->aYk:Lcom/xiaomi/smack/g;

    return-object v0
.end method

.method public FG()Lcom/xiaomi/smack/g;
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/xiaomi/a/a/a;->aYn:Ljava/io/Reader;

    check-cast v0, Lcom/xiaomi/smack/d/a;

    iget-object v1, p0, Lcom/xiaomi/a/a/a;->aYo:Lcom/xiaomi/smack/d/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/d/a;->b(Lcom/xiaomi/smack/d/f;)V

    .line 167
    new-instance v0, Lcom/xiaomi/smack/d/a;

    invoke-direct {v0, p1}, Lcom/xiaomi/smack/d/a;-><init>(Ljava/io/Reader;)V

    .line 168
    iget-object v1, p0, Lcom/xiaomi/a/a/a;->aYo:Lcom/xiaomi/smack/d/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/d/a;->a(Lcom/xiaomi/smack/d/f;)V

    .line 169
    iput-object v0, p0, Lcom/xiaomi/a/a/a;->aYn:Ljava/io/Reader;

    .line 170
    iget-object v0, p0, Lcom/xiaomi/a/a/a;->aYn:Ljava/io/Reader;

    return-object v0
.end method

.method public a(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/xiaomi/a/a/a;->aYm:Ljava/io/Writer;

    check-cast v0, Lcom/xiaomi/smack/d/b;

    iget-object v1, p0, Lcom/xiaomi/a/a/a;->aYp:Lcom/xiaomi/smack/d/m;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/d/b;->b(Lcom/xiaomi/smack/d/m;)V

    .line 175
    new-instance v0, Lcom/xiaomi/smack/d/b;

    invoke-direct {v0, p1}, Lcom/xiaomi/smack/d/b;-><init>(Ljava/io/Writer;)V

    .line 176
    iget-object v1, p0, Lcom/xiaomi/a/a/a;->aYp:Lcom/xiaomi/smack/d/m;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/d/b;->a(Lcom/xiaomi/smack/d/m;)V

    .line 177
    iput-object v0, p0, Lcom/xiaomi/a/a/a;->aYm:Ljava/io/Writer;

    .line 178
    iget-object v0, p0, Lcom/xiaomi/a/a/a;->aYm:Ljava/io/Writer;

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/xiaomi/a/a/a;->aYn:Ljava/io/Reader;

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/xiaomi/a/a/a;->aYm:Ljava/io/Writer;

    return-object v0
.end method
