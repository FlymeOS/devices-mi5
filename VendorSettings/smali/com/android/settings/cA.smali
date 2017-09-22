.class public Lcom/android/vendorsettings/cA;
.super Ljava/lang/Object;
.source "DreamBackend.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final lS:Landroid/service/dreams/IDreamManager;

.field private final lT:Lcom/android/vendorsettings/cC;

.field private final lU:Z

.field private final lV:Z

.field private final lW:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/vendorsettings/DreamSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".Backend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/vendorsettings/cA;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/vendorsettings/cA;->mContext:Landroid/content/Context;

    .line 84
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/cA;->lS:Landroid/service/dreams/IDreamManager;

    .line 86
    new-instance v0, Lcom/android/vendorsettings/cC;

    invoke-virtual {p0}, Lcom/android/vendorsettings/cA;->dA()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/cC;-><init>(Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/android/vendorsettings/cA;->lT:Lcom/android/vendorsettings/cC;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/cA;->lU:Z

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/cA;->lV:Z

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/cA;->lW:Z

    .line 93
    return-void
.end method

.method private static a(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 240
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-object v0

    .line 248
    :cond_1
    :try_start_0
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v2, "android.service.dream"

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 249
    if-nez v2, :cond_2

    .line 250
    :try_start_1
    sget-object v1, Lcom/android/vendorsettings/cA;->TAG:Ljava/lang/String;

    const-string v3, "No android.service.dream meta-data"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 274
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 253
    :cond_2
    :try_start_2
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 254
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 257
    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 259
    :cond_4
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 260
    const-string v5, "dream"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 261
    sget-object v1, Lcom/android/vendorsettings/cA;->TAG:Ljava/lang/String;

    const-string v3, "Meta-data does not start with dream tag"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 274
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 264
    :cond_5
    :try_start_3
    sget-object v4, Lcom/android/internal/R$styleable;->Dream:[I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 265
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    .line 266
    :try_start_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 274
    if-eqz v2, :cond_c

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    move-object v2, v0

    move-object v1, v3

    .line 276
    :goto_1
    if-eqz v2, :cond_7

    .line 277
    sget-object v1, Lcom/android/vendorsettings/cA;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 267
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 274
    :goto_2
    if-eqz v2, :cond_b

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    move-object v2, v1

    move-object v1, v3

    goto :goto_1

    .line 269
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 274
    :goto_3
    if-eqz v2, :cond_a

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    move-object v2, v1

    move-object v1, v3

    goto :goto_1

    .line 271
    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 274
    :goto_4
    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    move-object v2, v1

    move-object v1, v3

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v0

    .line 280
    :cond_7
    if-eqz v1, :cond_8

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_8

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    :cond_8
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    goto/16 :goto_0

    .line 274
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 271
    :catch_3
    move-exception v1

    move-object v3, v0

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_4

    .line 269
    :catch_5
    move-exception v1

    move-object v3, v0

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_3

    .line 267
    :catch_7
    move-exception v1

    move-object v3, v0

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_2

    :cond_9
    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_1

    :cond_a
    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_1

    :cond_b
    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_1

    :cond_c
    move-object v2, v0

    move-object v1, v3

    goto/16 :goto_1
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method private static b(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 234
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_1

    .line 235
    :cond_0
    const/4 v0, 0x0

    .line 236
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 173
    iget-object v0, p0, Lcom/android/vendorsettings/cA;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/vendorsettings/cA;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/cB;)V
    .locals 3

    .prologue
    .line 205
    const-string v0, "launchSettings(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/vendorsettings/cA;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/vendorsettings/cB;->lZ:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/cA;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p1, Lcom/android/vendorsettings/cB;->lZ:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public b(Landroid/content/ComponentName;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    const-string v0, "setActiveDream(%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/vendorsettings/cA;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/android/vendorsettings/cA;->lS:Landroid/service/dreams/IDreamManager;

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Landroid/content/ComponentName;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 186
    iget-object v1, p0, Lcom/android/vendorsettings/cA;->lS:Landroid/service/dreams/IDreamManager;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-interface {v1, v0}, Landroid/service/dreams/IDreamManager;->setDreamComponents([Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    sget-object v1, Lcom/android/vendorsettings/cA;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set active dream to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dA()Landroid/content/ComponentName;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 119
    iget-object v1, p0, Lcom/android/vendorsettings/cA;->lS:Landroid/service/dreams/IDreamManager;

    if-nez v1, :cond_0

    .line 125
    :goto_0
    return-object v0

    .line 122
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/vendorsettings/cA;->lS:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->getDefaultDreamComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    sget-object v2, Lcom/android/vendorsettings/cA;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get default dream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dB()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/android/vendorsettings/cA;->dE()Landroid/content/ComponentName;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_0

    .line 132
    iget-object v2, p0, Lcom/android/vendorsettings/cA;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 134
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 138
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public dC()Z
    .locals 2

    .prologue
    .line 155
    const-string v0, "screensaver_activate_on_dock"

    iget-boolean v1, p0, Lcom/android/vendorsettings/cA;->lW:Z

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/cA;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public dD()Z
    .locals 2

    .prologue
    .line 164
    const-string v0, "screensaver_activate_on_sleep"

    iget-boolean v1, p0, Lcom/android/vendorsettings/cA;->lV:Z

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/cA;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public dE()Landroid/content/ComponentName;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 193
    iget-object v1, p0, Lcom/android/vendorsettings/cA;->lS:Landroid/service/dreams/IDreamManager;

    if-nez v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-object v0

    .line 196
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/vendorsettings/cA;->lS:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->getDreamComponents()[Landroid/content/ComponentName;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v0, v1, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    sget-object v2, Lcom/android/vendorsettings/cA;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get active dream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dF()V
    .locals 3

    .prologue
    .line 223
    const-string v0, "startDreaming()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vendorsettings/cA;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/android/vendorsettings/cA;->lS:Landroid/service/dreams/IDreamManager;

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 227
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/cA;->lS:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->dream()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    sget-object v1, Lcom/android/vendorsettings/cA;->TAG:Ljava/lang/String;

    const-string v2, "Failed to dream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dz()Ljava/util/List;
    .locals 7

    .prologue
    .line 96
    const-string v0, "getDreamInfos()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vendorsettings/cA;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/vendorsettings/cA;->dE()Landroid/content/ComponentName;

    move-result-object v1

    .line 98
    iget-object v0, p0, Lcom/android/vendorsettings/cA;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.service.dreams.DreamService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 102
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 104
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_0

    .line 106
    new-instance v5, Lcom/android/vendorsettings/cB;

    invoke-direct {v5}, Lcom/android/vendorsettings/cB;-><init>()V

    .line 107
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Lcom/android/vendorsettings/cB;->lX:Ljava/lang/CharSequence;

    .line 108
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Lcom/android/vendorsettings/cB;->icon:Landroid/graphics/drawable/Drawable;

    .line 109
    invoke-static {v0}, Lcom/android/vendorsettings/cA;->b(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v5, Lcom/android/vendorsettings/cB;->componentName:Landroid/content/ComponentName;

    .line 110
    iget-object v6, v5, Lcom/android/vendorsettings/cB;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/vendorsettings/cB;->lY:Z

    .line 111
    invoke-static {v2, v0}, Lcom/android/vendorsettings/cA;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v5, Lcom/android/vendorsettings/cB;->lZ:Landroid/content/ComponentName;

    .line 112
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/cA;->lT:Lcom/android/vendorsettings/cC;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 115
    return-object v3
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 146
    const-string v0, "screensaver_enabled"

    iget-boolean v1, p0, Lcom/android/vendorsettings/cA;->lU:Z

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/cA;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 4

    .prologue
    .line 150
    const-string v0, "setEnabled(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/vendorsettings/cA;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    const-string v0, "screensaver_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/vendorsettings/cA;->setBoolean(Ljava/lang/String;Z)V

    .line 152
    return-void
.end method

.method public v(Z)V
    .locals 4

    .prologue
    .line 159
    const-string v0, "setActivatedOnDock(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/vendorsettings/cA;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    const-string v0, "screensaver_activate_on_dock"

    invoke-direct {p0, v0, p1}, Lcom/android/vendorsettings/cA;->setBoolean(Ljava/lang/String;Z)V

    .line 161
    return-void
.end method

.method public w(Z)V
    .locals 4

    .prologue
    .line 168
    const-string v0, "setActivatedOnSleep(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/vendorsettings/cA;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    const-string v0, "screensaver_activate_on_sleep"

    invoke-direct {p0, v0, p1}, Lcom/android/vendorsettings/cA;->setBoolean(Ljava/lang/String;Z)V

    .line 170
    return-void
.end method
