.class public Lcom/bumptech/glide/h;
.super Ljava/lang/Object;
.source "Glide.java"


# static fields
.field private static volatile aMU:Lcom/bumptech/glide/h;


# instance fields
.field private final aNA:Lcom/bumptech/glide/load/engine/e;

.field private final aNB:Lcom/bumptech/glide/load/engine/a/e;

.field private final aNC:Lcom/bumptech/glide/load/engine/b/o;

.field private final aND:Lcom/bumptech/glide/load/DecodeFormat;

.field private final aNE:Lcom/bumptech/glide/request/b/f;

.field private final aNF:Lcom/bumptech/glide/load/resource/e/d;

.field private final aNG:Lcom/bumptech/glide/f/c;

.field private final aNH:Lcom/bumptech/glide/load/resource/bitmap/e;

.field private final aNI:Lcom/bumptech/glide/load/resource/d/h;

.field private final aNJ:Lcom/bumptech/glide/load/resource/bitmap/l;

.field private final aNK:Lcom/bumptech/glide/load/resource/d/h;

.field private final aNL:Landroid/os/Handler;

.field private final aNM:Lcom/bumptech/glide/load/engine/c/a;

.field private final aNz:Lcom/bumptech/glide/load/b/c;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/e;Lcom/bumptech/glide/load/engine/b/o;Lcom/bumptech/glide/load/engine/a/e;Landroid/content/Context;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 6

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/bumptech/glide/request/b/f;

    invoke-direct {v0}, Lcom/bumptech/glide/request/b/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/h;->aNE:Lcom/bumptech/glide/request/b/f;

    .line 93
    new-instance v0, Lcom/bumptech/glide/load/resource/e/d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/e/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/h;->aNF:Lcom/bumptech/glide/load/resource/e/d;

    .line 204
    iput-object p1, p0, Lcom/bumptech/glide/h;->aNA:Lcom/bumptech/glide/load/engine/e;

    .line 205
    iput-object p3, p0, Lcom/bumptech/glide/h;->aNB:Lcom/bumptech/glide/load/engine/a/e;

    .line 206
    iput-object p2, p0, Lcom/bumptech/glide/h;->aNC:Lcom/bumptech/glide/load/engine/b/o;

    .line 207
    iput-object p5, p0, Lcom/bumptech/glide/h;->aND:Lcom/bumptech/glide/load/DecodeFormat;

    .line 208
    new-instance v0, Lcom/bumptech/glide/load/b/c;

    invoke-direct {v0, p4}, Lcom/bumptech/glide/load/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/h;->aNz:Lcom/bumptech/glide/load/b/c;

    .line 209
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/h;->aNL:Landroid/os/Handler;

    .line 210
    new-instance v0, Lcom/bumptech/glide/load/engine/c/a;

    invoke-direct {v0, p2, p3, p5}, Lcom/bumptech/glide/load/engine/c/a;-><init>(Lcom/bumptech/glide/load/engine/b/o;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/h;->aNM:Lcom/bumptech/glide/load/engine/c/a;

    .line 212
    new-instance v0, Lcom/bumptech/glide/f/c;

    invoke-direct {v0}, Lcom/bumptech/glide/f/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/h;->aNG:Lcom/bumptech/glide/f/c;

    .line 214
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/t;

    invoke-direct {v0, p3, p5}, Lcom/bumptech/glide/load/resource/bitmap/t;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 216
    iget-object v1, p0, Lcom/bumptech/glide/h;->aNG:Lcom/bumptech/glide/f/c;

    const-class v2, Ljava/io/InputStream;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3, v0}, Lcom/bumptech/glide/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f/b;)V

    .line 218
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-direct {v1, p3, p5}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 220
    iget-object v2, p0, Lcom/bumptech/glide/h;->aNG:Lcom/bumptech/glide/f/c;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    const-class v4, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4, v1}, Lcom/bumptech/glide/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f/b;)V

    .line 222
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/s;

    invoke-direct {v2, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/s;-><init>(Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/f/b;)V

    .line 224
    iget-object v0, p0, Lcom/bumptech/glide/h;->aNG:Lcom/bumptech/glide/f/c;

    const-class v1, Lcom/bumptech/glide/load/b/j;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3, v2}, Lcom/bumptech/glide/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f/b;)V

    .line 226
    new-instance v0, Lcom/bumptech/glide/load/resource/c/d;

    invoke-direct {v0, p4, p3}, Lcom/bumptech/glide/load/resource/c/d;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/e;)V

    .line 228
    iget-object v1, p0, Lcom/bumptech/glide/h;->aNG:Lcom/bumptech/glide/f/c;

    const-class v3, Ljava/io/InputStream;

    const-class v4, Lcom/bumptech/glide/load/resource/c/b;

    invoke-virtual {v1, v3, v4, v0}, Lcom/bumptech/glide/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f/b;)V

    .line 230
    iget-object v1, p0, Lcom/bumptech/glide/h;->aNG:Lcom/bumptech/glide/f/c;

    const-class v3, Lcom/bumptech/glide/load/b/j;

    const-class v4, Lcom/bumptech/glide/load/resource/d/a;

    new-instance v5, Lcom/bumptech/glide/load/resource/d/i;

    invoke-direct {v5, v2, v0, p3}, Lcom/bumptech/glide/load/resource/d/i;-><init>(Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/load/engine/a/e;)V

    invoke-virtual {v1, v3, v4, v5}, Lcom/bumptech/glide/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f/b;)V

    .line 233
    iget-object v0, p0, Lcom/bumptech/glide/h;->aNG:Lcom/bumptech/glide/f/c;

    const-class v1, Ljava/io/InputStream;

    const-class v2, Ljava/io/File;

    new-instance v3, Lcom/bumptech/glide/load/resource/b/e;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/b/e;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f/b;)V

    .line 235
    const-class v0, Ljava/io/File;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/bumptech/glide/load/b/a/b;

    invoke-direct {v2}, Lcom/bumptech/glide/load/b/a/b;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/t;)V

    .line 236
    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/b/b/f;

    invoke-direct {v2}, Lcom/bumptech/glide/load/b/b/f;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/t;)V

    .line 237
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/bumptech/glide/load/b/a/e;

    invoke-direct {v2}, Lcom/bumptech/glide/load/b/a/e;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/t;)V

    .line 238
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/b/b/i;

    invoke-direct {v2}, Lcom/bumptech/glide/load/b/b/i;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/t;)V

    .line 239
    const-class v0, Ljava/lang/Integer;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/bumptech/glide/load/b/a/e;

    invoke-direct {v2}, Lcom/bumptech/glide/load/b/a/e;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/t;)V

    .line 240
    const-class v0, Ljava/lang/Integer;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/b/b/i;

    invoke-direct {v2}, Lcom/bumptech/glide/load/b/b/i;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/t;)V

    .line 241
    const-class v0, Ljava/lang/String;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/bumptech/glide/load/b/a/g;

    invoke-direct {v2}, Lcom/bumptech/glide/load/b/a/g;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/t;)V

    .line 242
    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/b/b/k;

    invoke-direct {v2}, Lcom/bumptech/glide/load/b/b/k;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/t;)V

    .line 243
    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/bumptech/glide/load/b/a/i;

    invoke-direct {v2}, Lcom/bumptech/glide/load/b/a/i;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/t;)V

    .line 244
    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/b/b/m;

    invoke-direct {v2}, Lcom/bumptech/glide/load/b/b/m;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/t;)V

    .line 245
    const-class v0, Ljava/net/URL;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/b/b/o;

    invoke-direct {v2}, Lcom/bumptech/glide/load/b/b/o;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/t;)V

    .line 246
    const-class v0, Lcom/bumptech/glide/load/b/e;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/b/b/b;

    invoke-direct {v2}, Lcom/bumptech/glide/load/b/b/b;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/t;)V

    .line 247
    const-class v0, [B

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/bumptech/glide/load/b/b/d;

    invoke-direct {v2}, Lcom/bumptech/glide/load/b/b/d;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/t;)V

    .line 249
    iget-object v0, p0, Lcom/bumptech/glide/h;->aNF:Lcom/bumptech/glide/load/resource/e/d;

    const-class v1, Landroid/graphics/Bitmap;

    const-class v2, Lcom/bumptech/glide/load/resource/bitmap/m;

    new-instance v3, Lcom/bumptech/glide/load/resource/e/b;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p3}, Lcom/bumptech/glide/load/resource/e/b;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/a/e;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/load/resource/e/d;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/c;)V

    .line 251
    iget-object v0, p0, Lcom/bumptech/glide/h;->aNF:Lcom/bumptech/glide/load/resource/e/d;

    const-class v1, Lcom/bumptech/glide/load/resource/d/a;

    const-class v2, Lcom/bumptech/glide/load/resource/a/b;

    new-instance v3, Lcom/bumptech/glide/load/resource/e/a;

    new-instance v4, Lcom/bumptech/glide/load/resource/e/b;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Lcom/bumptech/glide/load/resource/e/b;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/a/e;)V

    invoke-direct {v3, v4}, Lcom/bumptech/glide/load/resource/e/a;-><init>(Lcom/bumptech/glide/load/resource/e/c;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/load/resource/e/d;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/c;)V

    .line 255
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/e;

    invoke-direct {v0, p3}, Lcom/bumptech/glide/load/resource/bitmap/e;-><init>(Lcom/bumptech/glide/load/engine/a/e;)V

    iput-object v0, p0, Lcom/bumptech/glide/h;->aNH:Lcom/bumptech/glide/load/resource/bitmap/e;

    .line 256
    new-instance v0, Lcom/bumptech/glide/load/resource/d/h;

    iget-object v1, p0, Lcom/bumptech/glide/h;->aNH:Lcom/bumptech/glide/load/resource/bitmap/e;

    invoke-direct {v0, p3, v1}, Lcom/bumptech/glide/load/resource/d/h;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/f;)V

    iput-object v0, p0, Lcom/bumptech/glide/h;->aNI:Lcom/bumptech/glide/load/resource/d/h;

    .line 258
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {v0, p3}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>(Lcom/bumptech/glide/load/engine/a/e;)V

    iput-object v0, p0, Lcom/bumptech/glide/h;->aNJ:Lcom/bumptech/glide/load/resource/bitmap/l;

    .line 259
    new-instance v0, Lcom/bumptech/glide/load/resource/d/h;

    iget-object v1, p0, Lcom/bumptech/glide/h;->aNJ:Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {v0, p3, v1}, Lcom/bumptech/glide/load/resource/d/h;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/f;)V

    iput-object v0, p0, Lcom/bumptech/glide/h;->aNK:Lcom/bumptech/glide/load/resource/d/h;

    .line 260
    return-void
.end method

.method private BI()Lcom/bumptech/glide/load/b/c;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/bumptech/glide/h;->aNz:Lcom/bumptech/glide/load/b/c;

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/s;
    .locals 1

    .prologue
    .line 567
    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/s;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/s;
    .locals 2

    .prologue
    .line 533
    if-nez p0, :cond_1

    .line 534
    const-string v0, "Glide"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    const-string v0, "Glide"

    const-string v1, "Unable to load null model, setting placeholder only"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_0
    const/4 v0, 0x0

    .line 539
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/bumptech/glide/h;->cV(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-direct {v0}, Lcom/bumptech/glide/h;->BI()Lcom/bumptech/glide/load/b/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/load/b/c;->c(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/s;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/s;
    .locals 1

    .prologue
    .line 588
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/s;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/bumptech/glide/request/b/k;)V
    .locals 1

    .prologue
    .line 427
    invoke-static {}, Lcom/bumptech/glide/h/h;->EK()V

    .line 428
    invoke-interface {p0}, Lcom/bumptech/glide/request/b/k;->EA()Lcom/bumptech/glide/request/a;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->clear()V

    .line 431
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/bumptech/glide/request/b/k;->f(Lcom/bumptech/glide/request/a;)V

    .line 433
    :cond_0
    return-void
.end method

.method public static cV(Landroid/content/Context;)Lcom/bumptech/glide/h;
    .locals 6

    .prologue
    .line 145
    sget-object v0, Lcom/bumptech/glide/h;->aMU:Lcom/bumptech/glide/h;

    if-nez v0, :cond_2

    .line 146
    const-class v1, Lcom/bumptech/glide/h;

    monitor-enter v1

    .line 147
    :try_start_0
    sget-object v0, Lcom/bumptech/glide/h;->aMU:Lcom/bumptech/glide/h;

    if-nez v0, :cond_1

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 149
    new-instance v0, Lcom/bumptech/glide/e/b;

    invoke-direct {v0, v2}, Lcom/bumptech/glide/e/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/e/b;->parse()Ljava/util/List;

    move-result-object v3

    .line 151
    new-instance v4, Lcom/bumptech/glide/i;

    invoke-direct {v4, v2}, Lcom/bumptech/glide/i;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/a;

    .line 153
    invoke-interface {v0, v2, v4}, Lcom/bumptech/glide/e/a;->a(Landroid/content/Context;Lcom/bumptech/glide/i;)V

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 155
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lcom/bumptech/glide/i;->BK()Lcom/bumptech/glide/h;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/h;->aMU:Lcom/bumptech/glide/h;

    .line 156
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/a;

    .line 157
    sget-object v4, Lcom/bumptech/glide/h;->aMU:Lcom/bumptech/glide/h;

    invoke-interface {v0, v2, v4}, Lcom/bumptech/glide/e/a;->a(Landroid/content/Context;Lcom/bumptech/glide/h;)V

    goto :goto_1

    .line 160
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :cond_2
    sget-object v0, Lcom/bumptech/glide/h;->aMU:Lcom/bumptech/glide/h;

    return-object v0
.end method

.method public static cW(Landroid/content/Context;)Lcom/bumptech/glide/j;
    .locals 1

    .prologue
    .line 628
    invoke-static {}, Lcom/bumptech/glide/d/o;->Eb()Lcom/bumptech/glide/d/o;

    move-result-object v0

    .line 629
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/d/o;->cY(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/app/Activity;)Lcom/bumptech/glide/j;
    .locals 1

    .prologue
    .line 640
    invoke-static {}, Lcom/bumptech/glide/d/o;->Eb()Lcom/bumptech/glide/d/o;

    move-result-object v0

    .line 641
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/d/o;->f(Landroid/app/Activity;)Lcom/bumptech/glide/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public BC()Lcom/bumptech/glide/load/engine/a/e;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/bumptech/glide/h;->aNB:Lcom/bumptech/glide/load/engine/a/e;

    return-object v0
.end method

.method BD()Lcom/bumptech/glide/load/engine/e;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/bumptech/glide/h;->aNA:Lcom/bumptech/glide/load/engine/e;

    return-object v0
.end method

.method BE()Lcom/bumptech/glide/load/resource/bitmap/e;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/bumptech/glide/h;->aNH:Lcom/bumptech/glide/load/resource/bitmap/e;

    return-object v0
.end method

.method BF()Lcom/bumptech/glide/load/resource/bitmap/l;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/bumptech/glide/h;->aNJ:Lcom/bumptech/glide/load/resource/bitmap/l;

    return-object v0
.end method

.method BG()Lcom/bumptech/glide/load/resource/d/h;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/bumptech/glide/h;->aNI:Lcom/bumptech/glide/load/resource/d/h;

    return-object v0
.end method

.method BH()Lcom/bumptech/glide/load/resource/d/h;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/bumptech/glide/h;->aNK:Lcom/bumptech/glide/load/resource/d/h;

    return-object v0
.end method

.method public BJ()V
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Lcom/bumptech/glide/h/h;->EK()V

    .line 372
    iget-object v0, p0, Lcom/bumptech/glide/h;->aNC:Lcom/bumptech/glide/load/engine/b/o;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/b/o;->BJ()V

    .line 373
    iget-object v0, p0, Lcom/bumptech/glide/h;->aNB:Lcom/bumptech/glide/load/engine/a/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/a/e;->BJ()V

    .line 374
    return-void
.end method

.method a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/e/c;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/bumptech/glide/h;->aNF:Lcom/bumptech/glide/load/resource/e/d;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/resource/e/d;->g(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/e/c;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/b/k;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/bumptech/glide/h;->aNE:Lcom/bumptech/glide/request/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/b/f;->b(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/b/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/t;)V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/bumptech/glide/h;->aNz:Lcom/bumptech/glide/load/b/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/b/c;->b(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/t;)Lcom/bumptech/glide/load/b/t;

    move-result-object v0

    .line 493
    if-eqz v0, :cond_0

    .line 494
    invoke-interface {v0}, Lcom/bumptech/glide/load/b/t;->Dr()V

    .line 496
    :cond_0
    return-void
.end method

.method b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/f/b;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/bumptech/glide/h;->aNG:Lcom/bumptech/glide/f/c;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/f/c;->h(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/f/b;

    move-result-object v0

    return-object v0
.end method

.method public trimMemory(I)V
    .locals 1

    .prologue
    .line 383
    invoke-static {}, Lcom/bumptech/glide/h/h;->EK()V

    .line 385
    iget-object v0, p0, Lcom/bumptech/glide/h;->aNC:Lcom/bumptech/glide/load/engine/b/o;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/b/o;->trimMemory(I)V

    .line 386
    iget-object v0, p0, Lcom/bumptech/glide/h;->aNB:Lcom/bumptech/glide/load/engine/a/e;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/a/e;->trimMemory(I)V

    .line 387
    return-void
.end method
