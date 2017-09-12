.class public Lmiui/app/backup/FullBackupProxy;
.super Ljava/lang/Object;
.source "FullBackupProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "linkdomain"    # Ljava/lang/String;
    .param p3, "rootpath"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "output"    # Landroid/app/backup/FullBackupDataOutput;

    .prologue
    .line 12
    invoke-static/range {p0 .. p5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    move-result v0

    return v0
.end method
