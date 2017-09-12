.class public Lmiui/maml/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/Utils$XmlTraverseListener;,
        Lmiui/maml/util/Utils$Point;,
        Lmiui/maml/util/Utils$GetChildWrapper;
    }
.end annotation


# static fields
.field private static INTENT_BLACK_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 297
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_INSTALL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_VERIFIED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    return-void
.end method

.method public static Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D
    .locals 8
    .param p0, "a"    # Lmiui/maml/util/Utils$Point;
    .param p1, "b"    # Lmiui/maml/util/Utils$Point;
    .param p2, "sqr"    # Z

    .prologue
    .line 115
    iget-wide v4, p0, Lmiui/maml/util/Utils$Point;->x:D

    iget-wide v6, p1, Lmiui/maml/util/Utils$Point;->x:D

    sub-double v0, v4, v6

    .line 116
    .local v0, "x":D
    iget-wide v4, p0, Lmiui/maml/util/Utils$Point;->y:D

    iget-wide v6, p1, Lmiui/maml/util/Utils$Point;->y:D

    sub-double v2, v4, v6

    .line 117
    .local v2, "y":D
    if-eqz p2, :cond_0

    .line 118
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 120
    :goto_0
    return-wide v4

    :cond_0
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    goto :goto_0
.end method

.method public static addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string v0, "_"

    invoke-static {p0, v0, p1}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    .line 155
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 156
    .local v0, "dot":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 159
    .end local p0    # "src":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 158
    .restart local p0    # "src":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static arrContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "arr"    # [Ljava/lang/String;
    .param p1, "tar"    # Ljava/lang/String;

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 224
    .local v3, "t":Ljava/lang/String;
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    const/4 v4, 0x1

    .line 227
    .end local v3    # "t":Ljava/lang/String;
    :goto_1
    return v4

    .line 223
    .restart local v3    # "t":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v3    # "t":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static arrayContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "arr"    # [Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 129
    .local v3, "str":Ljava/lang/String;
    invoke-static {v3, p1}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    const/4 v4, 0x1

    .line 132
    .end local v3    # "str":Ljava/lang/String;
    :goto_1
    return v4

    .line 128
    .restart local v3    # "str":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static asserts(Z)V
    .locals 1
    .param p0, "t"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    const-string v0, "assert error"

    invoke-static {p0, v0}, Lmiui/maml/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asserts(ZLjava/lang/String;)V
    .locals 1
    .param p0, "t"    # Z
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    return-void
.end method

.method public static doubleToString(D)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # D

    .prologue
    .line 168
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "str":Ljava/lang/String;
    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 124
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F
    .locals 2
    .param p0, "ele"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    .prologue
    .line 55
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 57
    .end local p2    # "def":F
    :goto_0
    return p2

    .line 56
    .restart local p2    # "def":F
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getAttrAsFloatThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)F
    .locals 1
    .param p0, "ele"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .locals 2
    .param p0, "ele"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 30
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 32
    .end local p2    # "def":I
    :goto_0
    return p2

    .line 31
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getAttrAsIntThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)I
    .locals 1
    .param p0, "ele"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J
    .locals 2
    .param p0, "ele"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 43
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 45
    .end local p2    # "def":J
    :goto_0
    return-wide p2

    .line 44
    .restart local p2    # "def":J
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getAttrAsLongThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)J
    .locals 2
    .param p0, "ele"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 6
    .param p0, "ele"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 83
    if-nez p0, :cond_0

    move-object v1, v3

    .line 93
    :goto_0
    return-object v1

    .line 86
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 87
    .local v2, "nl":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 88
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 89
    .local v1, "item":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    check-cast v1, Lorg/w3c/dom/Element;

    goto :goto_0

    .line 87
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "item":Lorg/w3c/dom/Node;
    :cond_2
    move-object v1, v3

    .line 93
    goto :goto_0
.end method

.method public static getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 7
    .param p0, "modeNum"    # I

    .prologue
    .line 276
    const-class v6, Landroid/graphics/PorterDuff$Mode;

    invoke-static {v6}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, [Landroid/graphics/PorterDuff$Mode;

    .line 278
    .local v5, "modes":[Landroid/graphics/PorterDuff$Mode;
    if-gez p0, :cond_2

    .line 279
    const/4 p0, 0x0

    .line 284
    :cond_0
    :goto_0
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 285
    .local v4, "mode":Landroid/graphics/PorterDuff$Mode;
    move-object v0, v5

    .local v0, "arr$":[Landroid/graphics/PorterDuff$Mode;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 286
    .local v3, "m":Landroid/graphics/PorterDuff$Mode;
    invoke-virtual {v3}, Landroid/graphics/PorterDuff$Mode;->ordinal()I

    move-result v6

    if-ne v6, p0, :cond_3

    .line 287
    move-object v4, v3

    .line 291
    .end local v3    # "m":Landroid/graphics/PorterDuff$Mode;
    :cond_1
    return-object v4

    .line 280
    .end local v0    # "arr$":[Landroid/graphics/PorterDuff$Mode;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_2
    array-length v6, v5

    if-lt p0, v6, :cond_0

    .line 281
    array-length v6, v5

    add-int/lit8 p0, v6, -0x1

    goto :goto_0

    .line 285
    .restart local v0    # "arr$":[Landroid/graphics/PorterDuff$Mode;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "m":Landroid/graphics/PorterDuff$Mode;
    .restart local v4    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;
    .locals 6
    .param p0, "strMode"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 262
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 272
    :cond_0
    :goto_0
    return-object v4

    .line 265
    :cond_1
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 266
    .local v4, "mode":Landroid/graphics/PorterDuff$Mode;
    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .local v0, "arr$":[Landroid/graphics/PorterDuff$Mode;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 267
    .local v3, "m":Landroid/graphics/PorterDuff$Mode;
    invoke-virtual {v3}, Landroid/graphics/PorterDuff$Mode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 268
    move-object v4, v3

    .line 269
    goto :goto_0

    .line 266
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;)D
    .locals 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    .line 256
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    .line 257
    .local v0, "tmp":Lmiui/maml/data/IndexedVariable;
    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v2

    return-wide v2
.end method

.method public static isProtectedIntent(Ljava/lang/String;)Z
    .locals 2
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 336
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static mixAlpha(II)I
    .locals 4
    .param p0, "a1"    # I
    .param p1, "a2"    # I

    .prologue
    const/16 v3, 0xff

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "alpha":I
    if-lt p0, v3, :cond_0

    .line 233
    move v0, p1

    .line 239
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 234
    :cond_0
    if-lt p1, v3, :cond_1

    .line 235
    move v0, p0

    goto :goto_0

    .line 237
    :cond_1
    mul-int v1, p0, p1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method public static numberToString(Ljava/lang/Number;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/Number;

    .prologue
    .line 173
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "str":Ljava/lang/String;
    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 179
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 180
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 182
    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static pointProjectionOnSegment(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)Lmiui/maml/util/Utils$Point;
    .locals 12
    .param p0, "a"    # Lmiui/maml/util/Utils$Point;
    .param p1, "b"    # Lmiui/maml/util/Utils$Point;
    .param p2, "c"    # Lmiui/maml/util/Utils$Point;
    .param p3, "nearestEnd"    # Z

    .prologue
    .line 139
    invoke-virtual {p1, p0}, Lmiui/maml/util/Utils$Point;->minus(Lmiui/maml/util/Utils$Point;)Lmiui/maml/util/Utils$Point;

    move-result-object v0

    .line 140
    .local v0, "AB":Lmiui/maml/util/Utils$Point;
    invoke-virtual {p2, p0}, Lmiui/maml/util/Utils$Point;->minus(Lmiui/maml/util/Utils$Point;)Lmiui/maml/util/Utils$Point;

    move-result-object v1

    .line 141
    .local v1, "AC":Lmiui/maml/util/Utils$Point;
    iget-wide v6, v0, Lmiui/maml/util/Utils$Point;->x:D

    iget-wide v8, v1, Lmiui/maml/util/Utils$Point;->x:D

    mul-double/2addr v6, v8

    iget-wide v8, v0, Lmiui/maml/util/Utils$Point;->y:D

    iget-wide v10, v1, Lmiui/maml/util/Utils$Point;->y:D

    mul-double/2addr v8, v10

    add-double v4, v6, v8

    .line 142
    .local v4, "r":D
    const/4 v3, 0x0

    invoke-static {p0, p1, v3}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v6

    div-double/2addr v4, v6

    .line 143
    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-ltz v3, :cond_0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    .line 144
    :cond_0
    if-nez p3, :cond_2

    const/4 p0, 0x0

    .end local p0    # "a":Lmiui/maml/util/Utils$Point;
    :cond_1
    :goto_0
    move-object v2, p0

    .line 150
    :goto_1
    return-object v2

    .line 144
    .restart local p0    # "a":Lmiui/maml/util/Utils$Point;
    :cond_2
    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-ltz v3, :cond_1

    move-object p0, p1

    goto :goto_0

    .line 146
    :cond_3
    move-object v2, v0

    .line 147
    .local v2, "D":Lmiui/maml/util/Utils$Point;
    iget-wide v6, v2, Lmiui/maml/util/Utils$Point;->x:D

    mul-double/2addr v6, v4

    iput-wide v6, v2, Lmiui/maml/util/Utils$Point;->x:D

    .line 148
    iget-wide v6, v2, Lmiui/maml/util/Utils$Point;->y:D

    mul-double/2addr v6, v4

    iput-wide v6, v2, Lmiui/maml/util/Utils$Point;->y:D

    .line 149
    invoke-virtual {v2, p0}, Lmiui/maml/util/Utils$Point;->Offset(Lmiui/maml/util/Utils$Point;)V

    goto :goto_1
.end method

.method public static putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "vars"    # Lmiui/maml/data/Variables;
    .param p2, "value"    # D

    .prologue
    .line 252
    invoke-virtual {p1, p0, p2, p3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 253
    return-void
.end method

.method public static putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "vars"    # Lmiui/maml/data/Variables;
    .param p2, "value"    # Ljava/lang/Double;

    .prologue
    .line 248
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 249
    return-void
.end method

.method public static putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "vars"    # Lmiui/maml/data/Variables;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 244
    invoke-virtual {p1, p0, p2}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    return-void
.end method

.method public static stringToDouble(Ljava/lang/String;D)D
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "def"    # D

    .prologue
    .line 186
    if-nez p0, :cond_0

    .line 191
    .end local p1    # "def":D
    :goto_0
    return-wide p1

    .line 189
    .restart local p1    # "def":D
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V
    .locals 5
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "l"    # Lmiui/maml/util/Utils$XmlTraverseListener;

    .prologue
    .line 212
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 213
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 214
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 215
    .local v2, "node":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    :cond_0
    check-cast v2, Lorg/w3c/dom/Element;

    .end local v2    # "node":Lorg/w3c/dom/Node;
    invoke-interface {p2, v2}, Lmiui/maml/util/Utils$XmlTraverseListener;->onChild(Lorg/w3c/dom/Element;)V

    .line 213
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_2
    return-void
.end method

.method public static traverseXmlElementChildrenTags(Lorg/w3c/dom/Element;[Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V
    .locals 6
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "tags"    # [Ljava/lang/String;
    .param p2, "l"    # Lmiui/maml/util/Utils$XmlTraverseListener;

    .prologue
    .line 200
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 201
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 202
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 203
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p1, v2}, Lmiui/maml/util/Utils;->arrContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    :cond_0
    check-cast v3, Lorg/w3c/dom/Element;

    .end local v3    # "node":Lorg/w3c/dom/Node;
    invoke-interface {p2, v3}, Lmiui/maml/util/Utils$XmlTraverseListener;->onChild(Lorg/w3c/dom/Element;)V

    .line 201
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public splitByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "arr"    # Ljava/lang/String;

    .prologue
    .line 382
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lmiui/maml/util/Utils;->splitByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public splitByteArray(Ljava/lang/String;I)[B
    .locals 5
    .param p1, "arr"    # Ljava/lang/String;
    .param p2, "radix"    # I

    .prologue
    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 387
    const/4 v0, 0x0

    .line 397
    :cond_0
    return-object v0

    .line 388
    :cond_1
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, "sArray":[Ljava/lang/String;
    array-length v2, v3

    .line 390
    .local v2, "length":I
    new-array v0, v2, [B

    .line 391
    .local v0, "dArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 393
    :try_start_0
    aget-object v4, v3, v1

    invoke-static {v4, p2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v4

    aput-byte v4, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 394
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public splitDoubleArray(Ljava/lang/String;)[D
    .locals 6
    .param p1, "arr"    # Ljava/lang/String;

    .prologue
    .line 348
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 349
    const/4 v0, 0x0

    .line 359
    :cond_0
    return-object v0

    .line 350
    :cond_1
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, "sArray":[Ljava/lang/String;
    array-length v2, v3

    .line 352
    .local v2, "length":I
    new-array v0, v2, [D

    .line 353
    .local v0, "dArray":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 355
    :try_start_0
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    aput-wide v4, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public splitIntArray(Ljava/lang/String;)[I
    .locals 1
    .param p1, "arr"    # Ljava/lang/String;

    .prologue
    .line 363
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lmiui/maml/util/Utils;->splitIntArray(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public splitIntArray(Ljava/lang/String;I)[I
    .locals 5
    .param p1, "arr"    # Ljava/lang/String;
    .param p2, "radix"    # I

    .prologue
    .line 367
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 368
    const/4 v0, 0x0

    .line 378
    :cond_0
    return-object v0

    .line 369
    :cond_1
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, "sArray":[Ljava/lang/String;
    array-length v2, v3

    .line 371
    .local v2, "length":I
    new-array v0, v2, [I

    .line 372
    .local v0, "dArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 374
    :try_start_0
    aget-object v4, v3, v1

    invoke-static {v4, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public splitStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "arr"    # Ljava/lang/String;
    .param p2, "sep"    # Ljava/lang/String;

    .prologue
    .line 342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x0

    .line 344
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
