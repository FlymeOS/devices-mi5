.class public Lmiui/content/pm/ExtraPackageManager;
.super Ljava/lang/Object;
.source "ExtraPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/pm/ExtraPackageManager$SignatureHolder;
    }
.end annotation


# static fields
.field public static final INSTALL_FROM_BOOTING:I = 0x40000000

.field public static final INSTALL_IN_BG:I = -0x80000000

.field private static final MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SIGNATURE_HOLDER:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Lmiui/content/pm/ExtraPackageManager$SignatureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRUSTED_PACKAGES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 238
    new-instance v0, Lmiui/content/pm/ExtraPackageManager$1;

    invoke-direct {v0}, Lmiui/content/pm/ExtraPackageManager$1;-><init>()V

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->SIGNATURE_HOLDER:Landroid/util/Singleton;

    .line 319
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.googlequicksearchbox"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.syncadapters.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.android.syncadapters.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.google.android.talk"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.google.android.tts"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.google.android.voicesearch"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->TRUSTED_PACKAGES:[Ljava/lang/String;

    .line 332
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    .line 335
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.miui.player"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 343
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 7
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    .line 296
    if-nez p0, :cond_1

    .line 297
    if-nez p1, :cond_0

    const/4 v6, 0x1

    .line 316
    :goto_0
    return v6

    .line 297
    :cond_0
    const/4 v6, -0x1

    goto :goto_0

    .line 301
    :cond_1
    if-nez p1, :cond_2

    .line 302
    const/4 v6, -0x2

    goto :goto_0

    .line 304
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 305
    .local v3, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 306
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 308
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 309
    .local v4, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 310
    .restart local v5    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 313
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 314
    const/4 v6, 0x0

    goto :goto_0

    .line 316
    :cond_5
    const/4 v6, -0x3

    goto :goto_0
.end method

.method public static handleIfContainsXiaomiAccountType(Landroid/content/Intent;)Z
    .locals 5
    .param p0, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "isNeedCancel":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 352
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 353
    .local v2, "resultAccount":Landroid/accounts/Account;
    if-eqz v2, :cond_0

    const-string v3, "com.xiaomi"

    iget-object v4, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 354
    const/4 v0, 0x1

    .line 355
    const-string v3, "response"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountAuthenticatorResponse;

    .line 356
    .local v1, "response":Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v1, :cond_0

    .line 357
    const/4 v3, 0x4

    const-string v4, "canceled"

    invoke-virtual {v1, v3, v4}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 361
    .end local v1    # "response":Landroid/accounts/AccountAuthenticatorResponse;
    .end local v2    # "resultAccount":Landroid/accounts/Account;
    :cond_0
    return v0
.end method

.method public static isMiuiSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 346
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTrustedAccountSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;II)Z
    .locals 9
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "serviceUid"    # I
    .param p3, "callingUid"    # I

    .prologue
    const/4 v7, 0x1

    .line 258
    const/16 v6, 0x3e9

    if-eq p3, v6, :cond_0

    const/16 v6, 0x2648

    if-ne p3, v6, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v7

    .line 262
    :cond_1
    const-string v6, "com.xiaomi"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 263
    invoke-virtual {p0, p3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "callerPkg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 266
    .local v4, "info":Landroid/content/pm/PackageInfo;
    const/16 v6, 0x40

    :try_start_0
    invoke-virtual {p0, v1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 271
    :goto_1
    if-eqz v4, :cond_4

    .line 274
    sget-object v6, Lmiui/content/pm/ExtraPackageManager;->SIGNATURE_HOLDER:Landroid/util/Singleton;

    invoke-virtual {v6}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;

    iget-object v6, v6, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;->MIUI_PLATFORM_SIGNATURES:[Landroid/content/pm/Signature;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v6, v8}, Lmiui/content/pm/ExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 280
    sget-object v6, Lmiui/content/pm/ExtraPackageManager;->SIGNATURE_HOLDER:Landroid/util/Singleton;

    invoke-virtual {v6}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;

    iget-object v0, v6, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;->ACCOUNT_WHITE_LIST:[Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;

    .local v0, "arr$":[Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v2, v0, v3

    .line 281
    .local v2, "entity":Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;
    iget-object v6, v2, Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v2, Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;->signatures:[Landroid/content/pm/Signature;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v6, v8}, Lmiui/content/pm/ExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 280
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 286
    .end local v2    # "entity":Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;
    :cond_3
    const-string v6, "android"

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v6, v8}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 292
    .end local v0    # "arr$":[Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;
    .end local v1    # "callerPkg":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "len$":I
    :cond_4
    invoke-virtual {p0, p2, p3}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v6

    if-nez v6, :cond_5

    move v6, v7

    :goto_3
    move v7, v6

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 267
    .restart local v1    # "callerPkg":Ljava/lang/String;
    .restart local v4    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public static isTrustedAppEntry(Ljava/util/jar/JarEntry;Ljava/lang/String;)Z
    .locals 2
    .param p0, "je"    # Ljava/util/jar/JarEntry;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string v0, "classes.dex"

    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->TRUSTED_PACKAGES:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTrustedSystemSignature([Landroid/content/pm/Signature;)Z
    .locals 5
    .param p0, "signature"    # [Landroid/content/pm/Signature;

    .prologue
    .line 246
    sget-object v4, Lmiui/content/pm/ExtraPackageManager;->SIGNATURE_HOLDER:Landroid/util/Singleton;

    invoke-virtual {v4}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;

    iget-object v0, v4, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    .local v0, "arr$":[[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 247
    .local v3, "sig":[Landroid/content/pm/Signature;
    invoke-static {v3, p0}, Lmiui/content/pm/ExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v4

    if-nez v4, :cond_0

    .line 249
    const/4 v4, 0x1

    .line 252
    .end local v3    # "sig":[Landroid/content/pm/Signature;
    :goto_1
    return v4

    .line 246
    .restart local v3    # "sig":[Landroid/content/pm/Signature;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    .end local v3    # "sig":[Landroid/content/pm/Signature;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
