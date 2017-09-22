.class Lcom/android/settings/bootloader/c;
.super Ljava/lang/Object;
.source "CloudDeviceStatus.java"


# static fields
.field private static final Sx:Landroid/net/Uri;

.field private static final Sy:Landroid/net/Uri;

.field private static Sz:Lcom/android/settings/bootloader/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "content://com.miui.securitycenter.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bootloader/c;->Sx:Landroid/net/Uri;

    .line 35
    sget-object v0, Lcom/android/settings/bootloader/c;->Sx:Landroid/net/Uri;

    const-string v1, "getserinum"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bootloader/c;->Sy:Landroid/net/Uri;

    .line 38
    new-instance v0, Lcom/android/settings/bootloader/d;

    invoke-direct {v0}, Lcom/android/settings/bootloader/d;-><init>()V

    sput-object v0, Lcom/android/settings/bootloader/c;->Sz:Lcom/android/settings/bootloader/d;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 207
    :try_start_0
    invoke-static {p0}, Lcom/android/settings/bootloader/Utils;->aE(Landroid/content/Context;)Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    move-result-object v0

    .line 208
    invoke-static {p0}, Lcom/android/settings/bootloader/Utils;->aF(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    const-string v3, "serviceToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v0, ";cUserId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    const-string v1, "Cookie"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/settings/bootloader/Utils$AccountExcepiton; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    throw v0
.end method

.method private static a(Lmiui/cloud/net/XHttpClient$HttpResponse;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 90
    const-string v0, "CloudDeviceStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stateCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v0, "CloudDeviceStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v0, Lcom/android/settings/bootloader/c;->Sz:Lcom/android/settings/bootloader/d;

    iput v4, v0, Lcom/android/settings/bootloader/d;->SA:I

    .line 93
    iget v0, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->stateCode:I

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    move v0, v1

    .line 117
    :goto_0
    return v0

    .line 96
    :cond_0
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 97
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 98
    sget-object v0, Lcom/android/settings/bootloader/c;->Sz:Lcom/android/settings/bootloader/d;

    const/4 v2, 0x3

    iput v2, v0, Lcom/android/settings/bootloader/d;->SA:I

    .line 99
    const-string v0, "CloudDeviceStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eror: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->error:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v1

    .line 103
    goto :goto_0

    .line 101
    :cond_1
    sget-object v0, Lcom/android/settings/bootloader/c;->Sz:Lcom/android/settings/bootloader/d;

    iput v4, v0, Lcom/android/settings/bootloader/d;->SA:I

    goto :goto_1

    .line 106
    :cond_2
    :try_start_0
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 107
    const-string v2, "ok"

    const-string v3, "result"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    :cond_3
    sget-object v2, Lcom/android/settings/bootloader/c;->Sz:Lcom/android/settings/bootloader/d;

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/settings/bootloader/d;->SA:I

    .line 111
    sget-object v2, Lcom/android/settings/bootloader/c;->Sz:Lcom/android/settings/bootloader/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "description"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/bootloader/d;->SB:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 112
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 117
    goto :goto_0
.end method

.method private static a(Ljava/util/Map;)[B
    .locals 5

    .prologue
    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    const-string v0, "POST&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v0, "/mic/binding/v1/identified/device/account"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 157
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "cloudsp_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 163
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->signWithDeviceCredential([BZ)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 170
    :goto_1
    return-object v0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    const-string v1, "CloudDeviceStatus"

    const-string v2, "getSignData error!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static aA(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 174
    const-string v6, ""

    .line 177
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 178
    sget-object v1, Lcom/android/settings/bootloader/c;->Sy:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 179
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    const-string v0, "seriNum"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    move-object v0, v6

    .line 186
    :goto_0
    if-eqz v1, :cond_0

    .line 187
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 193
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    const/16 v1, 0x10

    .line 196
    :try_start_3
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    .line 201
    :cond_1
    :goto_2
    return-object v0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 182
    :catch_1
    move-exception v0

    move-object v1, v7

    .line 183
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 186
    if-eqz v1, :cond_2

    .line 187
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    move-object v0, v6

    .line 191
    goto :goto_1

    .line 189
    :catch_2
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    .line 192
    goto :goto_1

    .line 185
    :catchall_0
    move-exception v0

    move-object v1, v7

    .line 186
    :goto_4
    if-eqz v1, :cond_3

    .line 187
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 191
    :cond_3
    :goto_5
    throw v0

    .line 189
    :catch_3
    move-exception v1

    .line 190
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 197
    :catch_4
    move-exception v1

    .line 198
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 185
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 182
    :catch_5
    move-exception v0

    goto :goto_3

    :cond_4
    move-object v0, v6

    goto :goto_0
.end method

.method public static ay(Landroid/content/Context;)Lcom/android/settings/bootloader/d;
    .locals 6

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 47
    :try_start_0
    const-string v2, "cloudsp_fid"

    invoke-static {}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->getSecurityDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {p0}, Lcom/android/settings/bootloader/c;->az(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 53
    if-nez v2, :cond_0

    .line 54
    sget-object v0, Lcom/android/settings/bootloader/c;->Sz:Lcom/android/settings/bootloader/d;

    .line 86
    :goto_0
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    new-instance v0, Lcom/android/settings/bootloader/Utils$ParameterException;

    const-string v1, "get paramter error: fid"

    invoke-direct {v0, v1}, Lcom/android/settings/bootloader/Utils$ParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-static {p0}, Lcom/android/settings/bootloader/Utils;->aC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 57
    if-nez v3, :cond_1

    .line 58
    sget-object v0, Lcom/android/settings/bootloader/c;->Sz:Lcom/android/settings/bootloader/d;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/settings/bootloader/d;->SA:I

    .line 59
    sget-object v0, Lcom/android/settings/bootloader/c;->Sz:Lcom/android/settings/bootloader/d;

    goto :goto_0

    .line 61
    :cond_1
    const-string v4, "cloudsp_nonce"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v2, "cloudsp_devId"

    invoke-static {p0}, Lcom/android/settings/bootloader/Utils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v2, "cloudsp_cpuId"

    invoke-static {p0}, Lcom/android/settings/bootloader/c;->aA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v2, "cloudsp_product"

    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v2, "userId"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v2, "cloudsp_userId"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {v0}, Lcom/android/settings/bootloader/c;->a(Ljava/util/Map;)[B

    move-result-object v2

    .line 68
    if-nez v2, :cond_2

    .line 69
    new-instance v0, Lcom/android/settings/bootloader/Utils$ParameterException;

    const-string v1, "get paramter error: sign"

    invoke-direct {v0, v1}, Lcom/android/settings/bootloader/Utils$ParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    const-string v3, "cloudp_sign"

    invoke-static {v2}, Lcom/android/settings/bootloader/Utils;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v2, "https://deviceapi.micloud.xiaomi.net/mic/binding/v1/identified/device/account"

    .line 73
    invoke-static {p0, v1}, Lcom/android/settings/bootloader/c;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 74
    const-string v3, "CloudDeviceStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "args: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v3, "CloudDeviceStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "headers: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :try_start_1
    new-instance v3, Lmiui/cloud/net/XHttpClient;

    invoke-direct {v3}, Lmiui/cloud/net/XHttpClient;-><init>()V

    invoke-virtual {v3, v2, v1, v0}, Lmiui/cloud/net/XHttpClient;->syncPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/android/settings/bootloader/c;->a(Lmiui/cloud/net/XHttpClient$HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    sget-object v0, Lcom/android/settings/bootloader/c;->Sz:Lcom/android/settings/bootloader/d;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/settings/bootloader/d;->SA:I

    .line 80
    sget-object v0, Lcom/android/settings/bootloader/c;->Sz:Lcom/android/settings/bootloader/d;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 82
    :catch_1
    move-exception v0

    .line 83
    sget-object v0, Lcom/android/settings/bootloader/c;->Sz:Lcom/android/settings/bootloader/d;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/settings/bootloader/d;->SA:I

    .line 84
    const-string v0, "CloudDeviceStatus"

    const-string v1, "post server error!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_3
    sget-object v0, Lcom/android/settings/bootloader/c;->Sz:Lcom/android/settings/bootloader/d;

    goto/16 :goto_0
.end method

.method private static az(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-static {p0}, Lcom/android/settings/bootloader/Utils;->aC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 123
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 125
    const-string v4, "cloudsp_devId"

    invoke-static {p0}, Lcom/android/settings/bootloader/Utils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    if-eqz v0, :cond_0

    .line 127
    const-string v4, "userId"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v4, "cloudsp_userId"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    :try_start_0
    const-string v0, "cloudsp_fid"

    invoke-static {}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->getSecurityDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    const-string v0, "https://deviceapi.micloud.xiaomi.net/mic/find/v4/anonymous/challenge"

    invoke-static {v0, v2}, Lcom/android/settings/bootloader/Utils;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 138
    :try_start_1
    new-instance v2, Lmiui/cloud/net/XHttpClient;

    invoke-direct {v2}, Lmiui/cloud/net/XHttpClient;-><init>()V

    invoke-virtual {v2, v0, v3}, Lmiui/cloud/net/XHttpClient;->syncGet(Ljava/lang/String;Ljava/util/Map;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object v0

    .line 139
    invoke-static {v0}, Lcom/android/settings/bootloader/c;->a(Lmiui/cloud/net/XHttpClient$HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    iget-object v0, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 141
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "nonce"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    new-instance v0, Lcom/android/settings/bootloader/Utils$ParameterException;

    const-string v1, "get paramter error: fid"

    invoke-direct {v0, v1}, Lcom/android/settings/bootloader/Utils$ParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v1

    .line 143
    goto :goto_0

    .line 145
    :catch_1
    move-exception v0

    .line 146
    sget-object v0, Lcom/android/settings/bootloader/c;->Sz:Lcom/android/settings/bootloader/d;

    const/4 v2, 0x2

    iput v2, v0, Lcom/android/settings/bootloader/d;->SA:I

    .line 147
    const-string v0, "CloudDeviceStatus"

    const-string v2, "getNonce error!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 149
    goto :goto_0
.end method
