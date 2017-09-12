.class public Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
.super Ljava/lang/Object;
.source "BackupFileResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/BackupFileResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackupFileMiuiHeader"
.end annotation


# instance fields
.field public apkName:Ljava/lang/String;

.field public encryptedPwd:Ljava/lang/String;

.field public featureId:I

.field public isEncrypted:Z

.field public packageName:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
