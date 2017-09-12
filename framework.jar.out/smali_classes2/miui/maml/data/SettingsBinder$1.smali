.class synthetic Lmiui/maml/data/SettingsBinder$1;
.super Ljava/lang/Object;
.source "SettingsBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/SettingsBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$miui$maml$data$SettingsBinder$Category:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lmiui/maml/data/SettingsBinder$Category;->values()[Lmiui/maml/data/SettingsBinder$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/maml/data/SettingsBinder$1;->$SwitchMap$miui$maml$data$SettingsBinder$Category:[I

    :try_start_0
    sget-object v0, Lmiui/maml/data/SettingsBinder$1;->$SwitchMap$miui$maml$data$SettingsBinder$Category:[I

    sget-object v1, Lmiui/maml/data/SettingsBinder$Category;->System:Lmiui/maml/data/SettingsBinder$Category;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lmiui/maml/data/SettingsBinder$1;->$SwitchMap$miui$maml$data$SettingsBinder$Category:[I

    sget-object v1, Lmiui/maml/data/SettingsBinder$Category;->Secure:Lmiui/maml/data/SettingsBinder$Category;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
