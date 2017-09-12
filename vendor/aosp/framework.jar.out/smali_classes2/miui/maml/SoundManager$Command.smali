.class public final enum Lmiui/maml/SoundManager$Command;
.super Ljava/lang/Enum;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/SoundManager$Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/SoundManager$Command;

.field public static final enum Pause:Lmiui/maml/SoundManager$Command;

.field public static final enum Play:Lmiui/maml/SoundManager$Command;

.field public static final enum Resume:Lmiui/maml/SoundManager$Command;

.field public static final enum Stop:Lmiui/maml/SoundManager$Command;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lmiui/maml/SoundManager$Command;

    const-string v1, "Play"

    invoke-direct {v0, v1, v2}, Lmiui/maml/SoundManager$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/SoundManager$Command;->Play:Lmiui/maml/SoundManager$Command;

    .line 40
    new-instance v0, Lmiui/maml/SoundManager$Command;

    const-string v1, "Pause"

    invoke-direct {v0, v1, v3}, Lmiui/maml/SoundManager$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/SoundManager$Command;->Pause:Lmiui/maml/SoundManager$Command;

    .line 41
    new-instance v0, Lmiui/maml/SoundManager$Command;

    const-string v1, "Resume"

    invoke-direct {v0, v1, v4}, Lmiui/maml/SoundManager$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/SoundManager$Command;->Resume:Lmiui/maml/SoundManager$Command;

    .line 42
    new-instance v0, Lmiui/maml/SoundManager$Command;

    const-string v1, "Stop"

    invoke-direct {v0, v1, v5}, Lmiui/maml/SoundManager$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/SoundManager$Command;->Stop:Lmiui/maml/SoundManager$Command;

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Lmiui/maml/SoundManager$Command;

    sget-object v1, Lmiui/maml/SoundManager$Command;->Play:Lmiui/maml/SoundManager$Command;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/SoundManager$Command;->Pause:Lmiui/maml/SoundManager$Command;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/SoundManager$Command;->Resume:Lmiui/maml/SoundManager$Command;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/SoundManager$Command;->Stop:Lmiui/maml/SoundManager$Command;

    aput-object v1, v0, v5

    sput-object v0, Lmiui/maml/SoundManager$Command;->$VALUES:[Lmiui/maml/SoundManager$Command;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lmiui/maml/SoundManager$Command;
    .locals 1
    .param p0, "c"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string v0, "pause"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lmiui/maml/SoundManager$Command;->Pause:Lmiui/maml/SoundManager$Command;

    .line 52
    :goto_0
    return-object v0

    .line 47
    :cond_0
    const-string v0, "resume"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    sget-object v0, Lmiui/maml/SoundManager$Command;->Resume:Lmiui/maml/SoundManager$Command;

    goto :goto_0

    .line 49
    :cond_1
    const-string v0, "stop"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    sget-object v0, Lmiui/maml/SoundManager$Command;->Stop:Lmiui/maml/SoundManager$Command;

    goto :goto_0

    .line 52
    :cond_2
    sget-object v0, Lmiui/maml/SoundManager$Command;->Play:Lmiui/maml/SoundManager$Command;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/SoundManager$Command;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lmiui/maml/SoundManager$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/SoundManager$Command;

    return-object v0
.end method

.method public static values()[Lmiui/maml/SoundManager$Command;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lmiui/maml/SoundManager$Command;->$VALUES:[Lmiui/maml/SoundManager$Command;

    invoke-virtual {v0}, [Lmiui/maml/SoundManager$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/SoundManager$Command;

    return-object v0
.end method
