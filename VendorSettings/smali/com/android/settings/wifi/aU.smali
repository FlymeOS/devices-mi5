.class synthetic Lcom/android/settings/wifi/aU;
.super Ljava/lang/Object;
.source "WpsDialog.java"


# static fields
.field static final synthetic aEM:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 240
    invoke-static {}, Lcom/android/settings/wifi/WpsDialog$DialogState;->values()[Lcom/android/settings/wifi/WpsDialog$DialogState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings/wifi/aU;->aEM:[I

    :try_start_0
    sget-object v0, Lcom/android/settings/wifi/aU;->aEM:[I

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->aEP:Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/settings/wifi/aU;->aEM:[I

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->aEQ:Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/settings/wifi/aU;->aEM:[I

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->aER:Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
