.class public abstract Lcom/android/vendorsettings/backup/g;
.super Ljava/lang/Object;
.source "AgentBase.java"


# instance fields
.field protected PL:Lmiui/app/backup/FullBackupAgent;


# direct methods
.method public constructor <init>(Lmiui/app/backup/FullBackupAgent;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/vendorsettings/backup/g;->PL:Lmiui/app/backup/FullBackupAgent;

    .line 14
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/ParcelFileDescriptor;)I
.end method

.method public abstract a(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
.end method

.method public abstract a(Lmiui/app/backup/BackupMeta;)I
.end method

.method public abstract a(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I
.end method

.method public abstract a(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
.end method

.method public abstract lC()I
.end method
