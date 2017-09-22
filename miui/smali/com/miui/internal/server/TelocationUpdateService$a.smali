.class final Lcom/miui/internal/server/TelocationUpdateService$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/server/TelocationUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final ij:Ljava/lang/String; = "telocation_download_id"

.field private static final ik:Ljava/lang/String; = "telocation_downloaded_file_md5"

.field private static final il:Ljava/lang/String; = "telocation_new_file_md5"

.field private static final im:Ljava/lang/String; = "telocation_patch_type"


# instance fields
.field public io:J

.field public ip:Ljava/lang/String;

.field public iq:Ljava/lang/String;

.field public ir:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p3, p0, Lcom/miui/internal/server/TelocationUpdateService$a;->ip:Ljava/lang/String;

    .line 388
    iput-wide p1, p0, Lcom/miui/internal/server/TelocationUpdateService$a;->io:J

    .line 389
    iput-object p4, p0, Lcom/miui/internal/server/TelocationUpdateService$a;->iq:Ljava/lang/String;

    .line 390
    iput p5, p0, Lcom/miui/internal/server/TelocationUpdateService$a;->ir:I

    .line 391
    return-void
.end method

.method public static b(Landroid/content/SharedPreferences;)Lcom/miui/internal/server/TelocationUpdateService$a;
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 403
    new-instance v1, Lcom/miui/internal/server/TelocationUpdateService$a;

    invoke-direct {v1}, Lcom/miui/internal/server/TelocationUpdateService$a;-><init>()V

    .line 404
    const-string v2, "telocation_download_id"

    invoke-interface {p0, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/miui/internal/server/TelocationUpdateService$a;->io:J

    .line 405
    iget-wide v2, v1, Lcom/miui/internal/server/TelocationUpdateService$a;->io:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-object v0

    .line 408
    :cond_1
    const-string v2, "telocation_downloaded_file_md5"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/internal/server/TelocationUpdateService$a;->ip:Ljava/lang/String;

    .line 409
    iget-object v2, v1, Lcom/miui/internal/server/TelocationUpdateService$a;->ip:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 412
    const-string v2, "telocation_new_file_md5"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/internal/server/TelocationUpdateService$a;->iq:Ljava/lang/String;

    .line 413
    iget-object v2, v1, Lcom/miui/internal/server/TelocationUpdateService$a;->iq:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 416
    const-string v2, "telocation_patch_type"

    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/miui/internal/server/TelocationUpdateService$a;->ir:I

    .line 417
    iget v2, v1, Lcom/miui/internal/server/TelocationUpdateService$a;->ir:I

    if-eq v2, v4, :cond_0

    move-object v0, v1

    .line 421
    goto :goto_0
.end method

.method public static c(Landroid/content/SharedPreferences;)V
    .locals 2

    .prologue
    .line 425
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "telocation_download_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "telocation_downloaded_file_md5"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "telocation_new_file_md5"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "telocation_patch_type"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 431
    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences;)V
    .locals 4

    .prologue
    .line 394
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "telocation_download_id"

    iget-wide v2, p0, Lcom/miui/internal/server/TelocationUpdateService$a;->io:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "telocation_downloaded_file_md5"

    iget-object v2, p0, Lcom/miui/internal/server/TelocationUpdateService$a;->ip:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "telocation_new_file_md5"

    iget-object v2, p0, Lcom/miui/internal/server/TelocationUpdateService$a;->iq:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "telocation_patch_type"

    iget v2, p0, Lcom/miui/internal/server/TelocationUpdateService$a;->ir:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 400
    return-void
.end method
