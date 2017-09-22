.class Lcom/android/vendorsettings/backup/w;
.super Ljava/lang/Object;
.source "SettingsAgent.java"


# instance fields
.field final synthetic Qd:Lcom/android/vendorsettings/backup/t;


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/backup/t;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/vendorsettings/backup/w;->Qd:Lcom/android/vendorsettings/backup/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/backup/t;Lcom/android/vendorsettings/backup/u;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/backup/w;-><init>(Lcom/android/vendorsettings/backup/t;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/ParcelFileDescriptor;)I
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/vendorsettings/backup/w;->Qd:Lcom/android/vendorsettings/backup/t;

    iget-object v0, v0, Lcom/android/vendorsettings/backup/t;->PL:Lmiui/app/backup/FullBackupAgent;

    new-instance v1, Lcom/android/vendorsettings/cloudbackup/f;

    invoke-direct {v1}, Lcom/android/vendorsettings/cloudbackup/f;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/xiaomi/settingsdk/backup/SettingsBackupHelper;->backupSettings(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/xiaomi/settingsdk/backup/ICloudBackup;)Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    move-result-object v0

    .line 168
    const-string v1, "Backup:SettingsAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backup attach count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->getFileItems()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->getFileItems()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    iget-object v2, p0, Lcom/android/vendorsettings/backup/w;->Qd:Lcom/android/vendorsettings/backup/t;

    iget-object v2, v2, Lcom/android/vendorsettings/backup/t;->PL:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v2, v0}, Lmiui/app/backup/FullBackupAgent;->addAttachedFile(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/os/ParcelFileDescriptor;)I
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/vendorsettings/backup/w;->Qd:Lcom/android/vendorsettings/backup/t;

    iget-object v0, v0, Lcom/android/vendorsettings/backup/t;->PL:Lmiui/app/backup/FullBackupAgent;

    new-instance v1, Lcom/android/vendorsettings/cloudbackup/f;

    invoke-direct {v1}, Lcom/android/vendorsettings/cloudbackup/f;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/xiaomi/settingsdk/backup/SettingsBackupHelper;->restoreSettings(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/xiaomi/settingsdk/backup/ICloudBackup;)V

    .line 177
    const/4 v0, 0x0

    return v0
.end method
