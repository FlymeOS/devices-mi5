.class public Landroid/service/securespaces/SpaceEncryptionManager;
.super Ljava/lang/Object;
.source "SpaceEncryptionManager.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "spaceencryption"

.field private static final TAG:Ljava/lang/String; = "SpaceEncryptionManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ecryptfsMount(IILjava/lang/String;)I
    .locals 4
    .param p0, "userId"    # I
    .param p1, "authId"    # I
    .param p2, "authData"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 57
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsMount(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 60
    :goto_0
    return v2

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static ecryptfsMountRemovableNonOwner(I)V
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 34
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 37
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsMountRemovableNonOwner(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static ecryptfsOverwrite(I)I
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 87
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 90
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsOverwrite(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 93
    :goto_0
    return v2

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static ecryptfsUnmount(I)I
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 65
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 68
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsUnmount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 71
    :goto_0
    return v2

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static ecryptfsUnmountRemovableNonOwner(I)V
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 44
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 47
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsUnmountRemovableNonOwner(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static ecryptfsUpdate(IILjava/lang/String;)I
    .locals 4
    .param p0, "userId"    # I
    .param p1, "authId"    # I
    .param p2, "authData"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 79
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsUpdate(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 82
    :goto_0
    return v2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static isAuthProtected(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 120
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 123
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->isAuthProtected(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 126
    :goto_0
    return v2

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static needAirlockUser(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 131
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 134
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->needAirlockUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 137
    :goto_0
    return v2

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static needsEcryptfsMount(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 98
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 101
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->needsEcryptfsMount(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 104
    :goto_0
    return v2

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static processEncryption(Landroid/content/pm/UserInfo;)Z
    .locals 4
    .param p0, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 109
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 112
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->processEncryption(Landroid/content/pm/UserInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 115
    :goto_0
    return v2

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setAirlockWallpaperToUser(I)V
    .locals 4
    .param p0, "userIdOrig"    # I

    .prologue
    .line 153
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 156
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->setAirlockWallpaperToUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setOpAddExcludeFromWipe(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 251
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 254
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpAddExcludeFromWipe(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 257
    :goto_0
    return v2

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpCleanUserData(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 240
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 243
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpCleanUserData(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 246
    :goto_0
    return v2

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpClearUserData(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 229
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 232
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpClearUserData(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 235
    :goto_0
    return v2

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpCreateUserConfig(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 218
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 221
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpCreateUserConfig(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 224
    :goto_0
    return v2

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpCreateUserData(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Z
    .locals 7
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "seinfo"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string/jumbo v1, "spaceencryption"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v0

    .local v0, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 166
    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpCreateUserData(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 169
    :goto_0
    return v1

    .line 167
    :catch_0
    move-exception v6

    .line 168
    .local v6, "re":Landroid/os/RemoteException;
    const-string v1, "SpaceEncryptionManager"

    const-string v2, "Error connecting to SpaceEncryptionService"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setOpDeleteCacheFiles(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 196
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 199
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpDeleteCacheFiles(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 202
    :goto_0
    return v2

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpDeleteCodeCacheFiles(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 207
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 210
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpDeleteCodeCacheFiles(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 213
    :goto_0
    return v2

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpLinkNativeLibraryDir(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "dataPath"    # Ljava/lang/String;
    .param p3, "newNativePath32"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 188
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2, p3}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpLinkNativeLibraryDir(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 191
    :goto_0
    return v2

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpRemove(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 174
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 177
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpRemove(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 180
    :goto_0
    return v2

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static switchUser(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 142
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 145
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 148
    :goto_0
    return v2

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    const/4 v2, 0x0

    goto :goto_0
.end method
