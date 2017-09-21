.class public abstract Landroid/content/ContentProvider;
.super Ljava/lang/Object;
.source "ContentProvider.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProvider$PipeDataWriter;,
        Landroid/content/ContentProvider$Transport;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentProvider"


# instance fields
.field private mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

.field private mAuthorities:[Ljava/lang/String;

.field private mAuthority:Ljava/lang/String;

.field private final mCallingPackage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mExported:Z

.field private mMyUid:I

.field private mNoPerms:Z

.field private mPathPermissions:[Landroid/content/pm/PathPermission;

.field private mReadPermission:Ljava/lang/String;

.field private mSingleUser:Z

.field private mTransport:Landroid/content/ContentProvider$Transport;

.field private mWritePermission:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 119
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    .line 121
    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pathPermissions"    # [Landroid/content/pm/PathPermission;

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 119
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    .line 121
    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    .line 159
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 160
    iput-object p2, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    .line 161
    iput-object p3, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    .line 162
    iput-object p4, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    .line 163
    return-void
.end method

.method static synthetic access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/ContentProvider;
    .param p1, "x1"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;
    .param p3, "testing"    # Z

    .prologue
    .line 1737
    iput-boolean p3, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    .line 1743
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 1744
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 1745
    if-eqz p1, :cond_0

    .line 1746
    iget-object v1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, v1, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1749
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Landroid/content/ContentProvider;->mMyUid:I

    .line 1750
    if-eqz p2, :cond_1

    .line 1751
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setReadPermission(Ljava/lang/String;)V

    .line 1752
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setWritePermission(Ljava/lang/String;)V

    .line 1753
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setPathPermissions([Landroid/content/pm/PathPermission;)V

    .line 1754
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    iput-boolean v0, p0, Landroid/content/ContentProvider;->mExported:Z

    .line 1755
    iget v0, p2, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    .line 1756
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setAuthorities(Ljava/lang/String;)V

    .line 1758
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->onCreate()Z

    .line 1760
    :cond_2
    return-void

    .line 1755
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callerToken"    # Landroid/os/IBinder;

    .prologue
    .line 522
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    const/4 v1, 0x2

    .line 538
    :goto_0
    return v1

    .line 527
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 529
    .local v0, "permOp":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderInjector;->isMmsProviderClass(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 530
    const/16 v0, 0x2715

    .line 534
    :cond_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 535
    iget-object v1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v1, v1, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 538
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;
    .locals 1
    .param p0, "abstractInterface"    # Landroid/content/IContentProvider;

    .prologue
    .line 180
    instance-of v0, p0, Landroid/content/ContentProvider$Transport;

    if-eqz v0, :cond_0

    .line 181
    check-cast p0, Landroid/content/ContentProvider$Transport;

    .end local p0    # "abstractInterface":Landroid/content/IContentProvider;
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .restart local p0    # "abstractInterface":Landroid/content/IContentProvider;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "auth"    # Ljava/lang/String;

    .prologue
    .line 1910
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 1912
    :goto_0
    return-object v1

    .line 1911
    :cond_0
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1912
    .local v0, "end":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1917
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 1920
    :goto_0
    return-object v1

    .line 1918
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1919
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1920
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public static getUserIdFromAuthority(Ljava/lang/String;)I
    .locals 1
    .param p0, "auth"    # Ljava/lang/String;

    .prologue
    .line 1889
    const/4 v0, -0x2

    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUserIdFromAuthority(Ljava/lang/String;I)I
    .locals 5
    .param p0, "auth"    # Ljava/lang/String;
    .param p1, "defaultUserId"    # I

    .prologue
    .line 1875
    if-nez p0, :cond_1

    .line 1883
    .end local p1    # "defaultUserId":I
    :cond_0
    :goto_0
    return p1

    .line 1876
    .restart local p1    # "defaultUserId":I
    :cond_1
    const/16 v3, 0x40

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1877
    .local v1, "end":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 1878
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1880
    .local v2, "userIdString":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 1881
    :catch_0
    move-exception v0

    .line 1882
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "ContentProvider"

    const-string v4, "Error parsing userId."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1883
    const/16 p1, -0x2710

    goto :goto_0
.end method

.method public static getUserIdFromUri(Landroid/net/Uri;)I
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1900
    const/4 v0, -0x2

    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public static getUserIdFromUri(Landroid/net/Uri;I)I
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "defaultUserId"    # I

    .prologue
    .line 1894
    if-nez p0, :cond_0

    .line 1895
    .end local p1    # "defaultUserId":I
    :goto_0
    return p1

    .restart local p1    # "defaultUserId":I
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method public static maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .prologue
    .line 1931
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 1941
    .end local p0    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p0

    .line 1932
    .restart local p0    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    const-string v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1934
    invoke-static {p0}, Landroid/content/ContentProvider;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1936
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1937
    .local v0, "builder":Landroid/net/Uri$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1938
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method

.method private setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 708
    iget-object v1, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 709
    .local v0, "original":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 710
    return-object v0
.end method

.method public static uriHasUserId(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 1925
    if-nez p0, :cond_1

    .line 1926
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private validateIncomingUri(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x2

    .line 1855
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1856
    .local v0, "auth":Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v2

    .line 1857
    .local v2, "userId":I
    if-eq v2, v3, :cond_0

    iget-object v3, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1858
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trying to query a ContentProvider in user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with a uri belonging to user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1861
    :cond_0
    invoke-static {v0}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/ContentProvider;->matchesOurAuthorities(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1862
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The authority of the uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not match the one of the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "contentProvider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1864
    .local v1, "message":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1865
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1869
    :goto_0
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1867
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1871
    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 1782
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1783
    .local v1, "numOperations":I
    new-array v2, v1, [Landroid/content/ContentProviderResult;

    .line 1784
    .local v2, "results":[Landroid/content/ContentProviderResult;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1785
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    invoke-virtual {v3, p0, v2, v0}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1784
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1787
    :cond_0
    return-object v2
.end method

.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 1733
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    .line 1734
    return-void
.end method

.method public attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 1722
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    .line 1723
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 1149
    array-length v1, p2

    .line 1150
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1151
    aget-object v2, p2, v0

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1153
    :cond_0
    return v1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1810
    const/4 v0, 0x0

    return-object v0
.end method

.method public canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 1081
    const/4 v0, 0x0

    return-object v0
.end method

.method checkUser(IILandroid/content/Context;)Z
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 508
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-nez v0, :cond_1

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p3, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1850
    const-string/jumbo v0, "nothing to dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1851
    return-void
.end method

.method protected enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 25
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 544
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 545
    .local v4, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 546
    .local v6, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 547
    .local v7, "uid":I
    const/16 v17, 0x0

    .line 548
    .local v17, "missingPerm":Ljava/lang/String;
    const/16 v23, 0x0

    .line 550
    .local v23, "strongestMode":I
    move-object/from16 v0, p0

    iget v8, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v7, v8}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 551
    const/4 v8, 0x0

    .line 609
    :goto_0
    return v8

    .line 555
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v8, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v4}, Landroid/content/ContentProvider;->checkUser(IILandroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v8

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lmiui/securityspace/CrossUserUtils;->checkCrossPermission(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 557
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v13

    .line 558
    .local v13, "componentPerm":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 559
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v13, v1, v2}, Landroid/content/ContentProvider;->checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v18

    .line 560
    .local v18, "mode":I
    if-nez v18, :cond_2

    .line 561
    const/4 v8, 0x0

    goto :goto_0

    .line 563
    :cond_2
    move-object/from16 v17, v13

    .line 564
    move/from16 v0, v23

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 570
    .end local v18    # "mode":I
    :cond_3
    if-nez v13, :cond_4

    const/4 v10, 0x1

    .line 572
    .local v10, "allowDefaultRead":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v22

    .line 573
    .local v22, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v22, :cond_7

    .line 574
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 575
    .local v19, "path":Ljava/lang/String;
    move-object/from16 v11, v22

    .local v11, "arr$":[Landroid/content/pm/PathPermission;
    array-length v0, v11

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    aget-object v21, v11, v15

    .line 576
    .local v21, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v20

    .line 577
    .local v20, "pathPerm":Ljava/lang/String;
    if-eqz v20, :cond_6

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 578
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/content/ContentProvider;->checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v18

    .line 579
    .restart local v18    # "mode":I
    if-nez v18, :cond_5

    .line 580
    const/4 v8, 0x0

    goto :goto_0

    .line 570
    .end local v10    # "allowDefaultRead":Z
    .end local v11    # "arr$":[Landroid/content/pm/PathPermission;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    .end local v18    # "mode":I
    .end local v19    # "path":Ljava/lang/String;
    .end local v20    # "pathPerm":Ljava/lang/String;
    .end local v21    # "pp":Landroid/content/pm/PathPermission;
    .end local v22    # "pps":[Landroid/content/pm/PathPermission;
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 584
    .restart local v10    # "allowDefaultRead":Z
    .restart local v11    # "arr$":[Landroid/content/pm/PathPermission;
    .restart local v15    # "i$":I
    .restart local v16    # "len$":I
    .restart local v18    # "mode":I
    .restart local v19    # "path":Ljava/lang/String;
    .restart local v20    # "pathPerm":Ljava/lang/String;
    .restart local v21    # "pp":Landroid/content/pm/PathPermission;
    .restart local v22    # "pps":[Landroid/content/pm/PathPermission;
    :cond_5
    const/4 v10, 0x0

    .line 585
    move-object/from16 v17, v20

    .line 586
    move/from16 v0, v23

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 575
    .end local v18    # "mode":I
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 594
    .end local v11    # "arr$":[Landroid/content/pm/PathPermission;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    .end local v19    # "path":Ljava/lang/String;
    .end local v20    # "pathPerm":Ljava/lang/String;
    .end local v21    # "pp":Landroid/content/pm/PathPermission;
    :cond_7
    if-eqz v10, :cond_8

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 598
    .end local v10    # "allowDefaultRead":Z
    .end local v13    # "componentPerm":Ljava/lang/String;
    .end local v22    # "pps":[Landroid/content/pm/PathPermission;
    :cond_8
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 599
    .local v12, "callingUserId":I
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    iget v8, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v8, v7}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v8

    if-nez v8, :cond_9

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v5

    .line 601
    .local v5, "userUri":Landroid/net/Uri;
    :goto_3
    const/4 v8, 0x1

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I

    move-result v8

    if-nez v8, :cond_a

    .line 603
    const/4 v8, 0x0

    goto/16 :goto_0

    .end local v5    # "userUri":Landroid/net/Uri;
    :cond_9
    move-object/from16 v5, p1

    .line 599
    goto :goto_3

    .line 608
    .restart local v5    # "userUri":Landroid/net/Uri;
    :cond_a
    const/4 v8, 0x1

    move/from16 v0, v23

    if-ne v0, v8, :cond_b

    .line 609
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 612
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v8, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " requires "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", or grantUriPermission()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 615
    .local v14, "failReason":Ljava/lang/String;
    :goto_4
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Permission Denial: reading "

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v24, " uri "

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v24, " from pid="

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v24, ", uid="

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 612
    .end local v14    # "failReason":Ljava/lang/String;
    :cond_c
    const-string v14, " requires the provider be exported, or grantUriPermission()"

    goto :goto_4
.end method

.method protected enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 23
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 623
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 624
    .local v4, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 625
    .local v6, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 626
    .local v7, "uid":I
    const/16 v16, 0x0

    .line 627
    .local v16, "missingPerm":Ljava/lang/String;
    const/16 v22, 0x0

    .line 629
    .local v22, "strongestMode":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v7, v5}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 630
    const/4 v5, 0x0

    .line 683
    :goto_0
    return v5

    .line 633
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v4}, Landroid/content/ContentProvider;->checkUser(IILandroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 634
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v12

    .line 635
    .local v12, "componentPerm":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 636
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v12, v1, v2}, Landroid/content/ContentProvider;->checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v17

    .line 637
    .local v17, "mode":I
    if-nez v17, :cond_1

    .line 638
    const/4 v5, 0x0

    goto :goto_0

    .line 640
    :cond_1
    move-object/from16 v16, v12

    .line 641
    move/from16 v0, v22

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 647
    .end local v17    # "mode":I
    :cond_2
    if-nez v12, :cond_3

    const/4 v10, 0x1

    .line 649
    .local v10, "allowDefaultWrite":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v21

    .line 650
    .local v21, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v21, :cond_6

    .line 651
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v18

    .line 652
    .local v18, "path":Ljava/lang/String;
    move-object/from16 v11, v21

    .local v11, "arr$":[Landroid/content/pm/PathPermission;
    array-length v15, v11

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_2
    if-ge v14, v15, :cond_6

    aget-object v20, v11, v14

    .line 653
    .local v20, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v19

    .line 654
    .local v19, "pathPerm":Ljava/lang/String;
    if-eqz v19, :cond_5

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 655
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/content/ContentProvider;->checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v17

    .line 656
    .restart local v17    # "mode":I
    if-nez v17, :cond_4

    .line 657
    const/4 v5, 0x0

    goto :goto_0

    .line 647
    .end local v10    # "allowDefaultWrite":Z
    .end local v11    # "arr$":[Landroid/content/pm/PathPermission;
    .end local v14    # "i$":I
    .end local v15    # "len$":I
    .end local v17    # "mode":I
    .end local v18    # "path":Ljava/lang/String;
    .end local v19    # "pathPerm":Ljava/lang/String;
    .end local v20    # "pp":Landroid/content/pm/PathPermission;
    .end local v21    # "pps":[Landroid/content/pm/PathPermission;
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 661
    .restart local v10    # "allowDefaultWrite":Z
    .restart local v11    # "arr$":[Landroid/content/pm/PathPermission;
    .restart local v14    # "i$":I
    .restart local v15    # "len$":I
    .restart local v17    # "mode":I
    .restart local v18    # "path":Ljava/lang/String;
    .restart local v19    # "pathPerm":Ljava/lang/String;
    .restart local v20    # "pp":Landroid/content/pm/PathPermission;
    .restart local v21    # "pps":[Landroid/content/pm/PathPermission;
    :cond_4
    const/4 v10, 0x0

    .line 662
    move-object/from16 v16, v19

    .line 663
    move/from16 v0, v22

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 652
    .end local v17    # "mode":I
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 671
    .end local v11    # "arr$":[Landroid/content/pm/PathPermission;
    .end local v14    # "i$":I
    .end local v15    # "len$":I
    .end local v18    # "path":Ljava/lang/String;
    .end local v19    # "pathPerm":Ljava/lang/String;
    .end local v20    # "pp":Landroid/content/pm/PathPermission;
    :cond_6
    if-eqz v10, :cond_7

    const/4 v5, 0x0

    goto :goto_0

    .line 675
    .end local v10    # "allowDefaultWrite":Z
    .end local v12    # "componentPerm":Ljava/lang/String;
    .end local v21    # "pps":[Landroid/content/pm/PathPermission;
    :cond_7
    const/4 v8, 0x2

    move-object/from16 v5, p1

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I

    move-result v5

    if-nez v5, :cond_8

    .line 677
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 682
    :cond_8
    const/4 v5, 0x1

    move/from16 v0, v22

    if-ne v0, v5, :cond_9

    .line 683
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 686
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " requires "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", or grantUriPermission()"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 689
    .local v13, "failReason":Ljava/lang/String;
    :goto_3
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission Denial: writing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " uri "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 686
    .end local v13    # "failReason":Ljava/lang/String;
    :cond_a
    const-string v13, " requires the provider be exported, or grantUriPermission()"

    goto :goto_3
.end method

.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method public final getCallingPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 728
    iget-object v1, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 729
    .local v0, "pkg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 730
    iget-object v1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v1, v1, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 732
    :cond_0
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIContentProvider()Landroid/content/IContentProvider;
    .locals 1

    .prologue
    .line 1713
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    return-object v0
.end method

.method public final getPathPermissions()[Landroid/content/pm/PathPermission;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    return-object v0
.end method

.method public final getReadPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .prologue
    .line 1512
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getType(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public final getWritePermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    return-object v0
.end method

.method public abstract insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected isTemporary()Z
    .locals 1

    .prologue
    .line 1703
    const/4 v0, 0x0

    return v0
.end method

.method protected final matchesOurAuthorities(Ljava/lang/String;)Z
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 756
    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 757
    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 765
    :goto_0
    return v2

    .line 759
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 760
    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    array-length v1, v2

    .line 761
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 762
    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 761
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 765
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 886
    return-void
.end method

.method public abstract onCreate()Z
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 897
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 900
    return-void
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1384
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1385
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1447
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1258
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No files supported by provider at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1328
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1466
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1467
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1468
    .local v7, "count":I
    :cond_0
    if-eq v7, v11, :cond_3

    .line 1471
    if-eqz v6, :cond_1

    .line 1472
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1474
    :cond_1
    if-nez v7, :cond_2

    .line 1475
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1477
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple items at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1480
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1481
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1482
    .local v8, "i":I
    if-ltz v8, :cond_4

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1483
    .local v10, "path":Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1484
    if-nez v10, :cond_5

    .line 1485
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Column _data not found."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v10    # "path":Ljava/lang/String;
    :cond_4
    move-object v10, v3

    .line 1482
    goto :goto_0

    .line 1488
    .restart local v10    # "path":Ljava/lang/String;
    :cond_5
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v9

    .line 1489
    .local v9, "modeBits":I
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "TT;",
            "Landroid/content/ContentProvider$PipeDataWriter",
            "<TT;>;)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1676
    .local p4, "args":Ljava/lang/Object;, "TT;"
    .local p5, "func":Landroid/content/ContentProvider$PipeDataWriter;, "Landroid/content/ContentProvider$PipeDataWriter<TT;>;"
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1678
    .local v3, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/content/ContentProvider$1;

    move-object v1, p0

    move-object v2, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/content/ContentProvider$1;-><init>(Landroid/content/ContentProvider;Landroid/content/ContentProvider$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 1690
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1692
    const/4 v1, 0x0

    aget-object v1, v3, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1693
    .end local v0    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3    # "fds":[Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v8

    .line 1694
    .local v8, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "failure making pipe"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1562
    const-string v1, "*/*"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1564
    const-string/jumbo v1, "r"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 1570
    :goto_0
    return-object v1

    .line 1566
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1567
    .local v0, "baseType":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0, p2}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1570
    const-string/jumbo v1, "r"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    goto :goto_0

    .line 1572
    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1630
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public abstract query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 1027
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1116
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final setAppOps(II)V
    .locals 1
    .param p1, "readOp"    # I
    .param p2, "writeOp"    # I

    .prologue
    .line 837
    iget-boolean v0, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    if-nez v0, :cond_0

    .line 838
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput p1, v0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 839
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput p2, v0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    .line 841
    :cond_0
    return-void
.end method

.method protected final setAuthorities(Ljava/lang/String;)V
    .locals 3
    .param p1, "authorities"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 743
    if-eqz p1, :cond_0

    .line 744
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 745
    iput-object p1, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    .line 746
    iput-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    iput-object v2, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    .line 749
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    goto :goto_0
.end method

.method protected final setPathPermissions([Landroid/content/pm/PathPermission;)V
    .locals 0
    .param p1, "permissions"    # [Landroid/content/pm/PathPermission;

    .prologue
    .line 821
    iput-object p1, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    .line 822
    return-void
.end method

.method protected final setReadPermission(Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 777
    iput-object p1, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    .line 778
    return-void
.end method

.method protected final setWritePermission(Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 799
    iput-object p1, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    .line 800
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 1836
    const-string v0, "ContentProvider"

    const-string/jumbo v1, "implement ContentProvider shutdown() to make sure all database connections are gracefully shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    return-void
.end method

.method public uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 1099
    return-object p1
.end method

.method public abstract update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method isFlymeCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callingPkg"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .local v12, "uid":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v12, v13}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    return v13

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/ContentProvider;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    const-string v14, "access_control"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmeizu/security/AccessControlManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/content/ContentProvider;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/ContentProvider;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    if-nez v13, :cond_2

    const/4 v13, 0x0

    return v13

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .local v8, "name":Ljava/lang/String;
    if-nez v8, :cond_3

    const/4 v13, 0x0

    return v13

    :cond_3
    const/4 v4, 0x0

    .local v4, "cpi":Landroid/content/pm/ProviderInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    const/4 v15, 0x0

    invoke-interface {v13, v8, v15, v14}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .end local v4    # "cpi":Landroid/content/pm/ProviderInfo;
    :goto_0
    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "ownerPackage"

    const-string v15, "string"

    iget-object v0, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .local v11, "ownerPackageId":I
    const/4 v10, 0x0

    .local v10, "ownerPackage":Ljava/lang/String;
    if-lez v11, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .end local v10    # "ownerPackage":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/ContentProvider;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    iget-object v14, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lmeizu/security/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/ContentProvider;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    invoke-virtual {v13, v10}, Lmeizu/security/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    :cond_5
    if-eqz v10, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, 0x0

    return v13

    :cond_6
    const-string v13, "com.tencent.mm.sdk.plugin.provider"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "com.tencent.mm"

    iget-object v14, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v13, 0x0

    return v13

    :cond_7
    const-string v13, "com.meizu.safe"

    iget-object v14, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x0

    return v13

    :cond_8
    const-string v13, "com.android.mms"

    iget-object v14, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "com.android.providers.telephony"

    iget-object v14, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    :cond_9
    const/4 v13, 0x0

    return v13

    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    iget-object v14, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v15, 0x80

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_b

    iget-object v13, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v13, :cond_b

    iget-object v13, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v14, "needAccessData"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    .local v9, "needAccessData":Z
    if-nez v9, :cond_b

    const/4 v13, 0x0

    return v13

    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "needAccessData":Z
    :catch_0
    move-exception v5

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "believePackages"

    const-string v15, "array"

    iget-object v0, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .local v2, "believePackageId":I
    if-lez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .local v3, "believePackages":[Ljava/lang/String;
    if-eqz v3, :cond_d

    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v13, v3

    if-ge v7, v13, :cond_d

    aget-object v13, v3, v7

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    const/4 v13, 0x0

    return v13

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v3    # "believePackages":[Ljava/lang/String;
    .end local v7    # "i":I
    :cond_d
    const/4 v13, 0x1

    return v13

    .end local v2    # "believePackageId":I
    .end local v11    # "ownerPackageId":I
    :cond_e
    const/4 v13, 0x0

    return v13

    .restart local v4    # "cpi":Landroid/content/pm/ProviderInfo;
    :catch_1
    move-exception v6

    .local v6, "ex":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method
