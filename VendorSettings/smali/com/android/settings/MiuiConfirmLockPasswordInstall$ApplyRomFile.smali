.class Lcom/android/settings/MiuiConfirmLockPasswordInstall$ApplyRomFile;
.super Ljava/io/File;
.source "MiuiConfirmLockPasswordInstall.java"


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiConfirmLockPasswordInstall;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiConfirmLockPasswordInstall;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/MiuiConfirmLockPasswordInstall$ApplyRomFile;->this$0:Lcom/android/settings/MiuiConfirmLockPasswordInstall;

    .line 71
    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public getCanonicalPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    invoke-super {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string v1, "/mnt"

    .line 78
    const-string v1, "/mnt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 79
    const-string v1, "/mnt"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_0
    const-string v1, "/storage/emulated/0/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const-string v1, "/storage/emulated/0/"

    const-string v2, "/data/media/0/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "/storage/sdcard0"

    const-string v2, "sdcard"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
