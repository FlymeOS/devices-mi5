.class final enum Lmiui/maml/data/SettingsBinder$Category;
.super Ljava/lang/Enum;
.source "SettingsBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/SettingsBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/data/SettingsBinder$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/SettingsBinder$Category;

.field public static final enum Secure:Lmiui/maml/data/SettingsBinder$Category;

.field public static final enum System:Lmiui/maml/data/SettingsBinder$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lmiui/maml/data/SettingsBinder$Category;

    const-string v1, "Secure"

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/SettingsBinder$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/SettingsBinder$Category;->Secure:Lmiui/maml/data/SettingsBinder$Category;

    .line 29
    new-instance v0, Lmiui/maml/data/SettingsBinder$Category;

    const-string v1, "System"

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/SettingsBinder$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/SettingsBinder$Category;->System:Lmiui/maml/data/SettingsBinder$Category;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lmiui/maml/data/SettingsBinder$Category;

    sget-object v1, Lmiui/maml/data/SettingsBinder$Category;->Secure:Lmiui/maml/data/SettingsBinder$Category;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/SettingsBinder$Category;->System:Lmiui/maml/data/SettingsBinder$Category;

    aput-object v1, v0, v3

    sput-object v0, Lmiui/maml/data/SettingsBinder$Category;->$VALUES:[Lmiui/maml/data/SettingsBinder$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/SettingsBinder$Category;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lmiui/maml/data/SettingsBinder$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/SettingsBinder$Category;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/SettingsBinder$Category;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lmiui/maml/data/SettingsBinder$Category;->$VALUES:[Lmiui/maml/data/SettingsBinder$Category;

    invoke-virtual {v0}, [Lmiui/maml/data/SettingsBinder$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/data/SettingsBinder$Category;

    return-object v0
.end method
