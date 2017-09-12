.class public Lmiui/securityspace/SecuritySpaceEcryptManager;
.super Ljava/lang/Object;
.source "SecuritySpaceEcryptManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static needAirlockUser(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 34
    invoke-static {p0}, Landroid/service/securespaces/SpaceEncryptionManager;->needAirlockUser(I)Z

    move-result v0

    return v0
.end method

.method public static spaceEcryptfsMount(IILjava/lang/String;)I
    .locals 1
    .param p0, "userId"    # I
    .param p1, "authId"    # I
    .param p2, "authData"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p0, p1, p2}, Landroid/service/securespaces/SpaceEncryptionManager;->ecryptfsMount(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static spaceEcryptfsUnmount(I)V
    .locals 0
    .param p0, "userId"    # I

    .prologue
    .line 18
    invoke-static {p0}, Landroid/service/securespaces/SpaceEncryptionManager;->ecryptfsUnmount(I)I

    .line 19
    return-void
.end method

.method public static spaceEcryptfsUnmountRemovableNonOwner(I)V
    .locals 0
    .param p0, "userId"    # I

    .prologue
    .line 22
    invoke-static {p0}, Landroid/service/securespaces/SpaceEncryptionManager;->ecryptfsUnmountRemovableNonOwner(I)V

    .line 23
    return-void
.end method

.method public static spaceEcryptfsUpdate(IILjava/lang/String;)V
    .locals 0
    .param p0, "userId"    # I
    .param p1, "authId"    # I
    .param p2, "authData"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Landroid/service/securespaces/SpaceEncryptionManager;->ecryptfsUpdate(IILjava/lang/String;)I

    .line 11
    return-void
.end method

.method public static spaceNeedsEcryptfsMount(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 14
    invoke-static {p0}, Landroid/service/securespaces/SpaceEncryptionManager;->needsEcryptfsMount(I)Z

    move-result v0

    return v0
.end method

.method public static spaceSwitchUser(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 30
    invoke-static {p0}, Landroid/service/securespaces/SpaceEncryptionManager;->switchUser(I)Z

    move-result v0

    return v0
.end method
