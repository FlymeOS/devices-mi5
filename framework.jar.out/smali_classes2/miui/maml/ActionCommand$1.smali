.class synthetic Lmiui/maml/ActionCommand$1;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$IntentCommand$IntentType:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

.field static final synthetic $SwitchMap$miui$maml$SoundManager$Command:[I

.field static final synthetic $SwitchMap$miui$maml$data$VariableType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1439
    invoke-static {}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->values()[Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    :try_start_0
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_17

    :goto_0
    :try_start_1
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_16

    :goto_1
    :try_start_2
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_15

    :goto_2
    :try_start_3
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_14

    .line 1320
    :goto_3
    invoke-static {}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->values()[Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    :try_start_4
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_13

    :goto_4
    :try_start_5
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_12

    :goto_5
    :try_start_6
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_11

    .line 1248
    :goto_6
    invoke-static {}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->values()[Lmiui/maml/ActionCommand$AnimationProperty$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    :try_start_7
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    sget-object v1, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_10

    :goto_7
    :try_start_8
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    sget-object v1, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PAUSE:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_f

    :goto_8
    :try_start_9
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    sget-object v1, Lmiui/maml/ActionCommand$AnimationProperty$Type;->RESUME:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_e

    :goto_9
    :try_start_a
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    sget-object v1, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_d

    .line 1036
    :goto_a
    invoke-static {}, Lmiui/maml/SoundManager$Command;->values()[Lmiui/maml/SoundManager$Command;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$SoundManager$Command:[I

    :try_start_b
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$SoundManager$Command:[I

    sget-object v1, Lmiui/maml/SoundManager$Command;->Play:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_c

    :goto_b
    :try_start_c
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$SoundManager$Command:[I

    sget-object v1, Lmiui/maml/SoundManager$Command;->Pause:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_b

    :goto_c
    :try_start_d
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$SoundManager$Command:[I

    sget-object v1, Lmiui/maml/SoundManager$Command;->Resume:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_a

    :goto_d
    :try_start_e
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$SoundManager$Command:[I

    sget-object v1, Lmiui/maml/SoundManager$Command;->Stop:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_9

    .line 977
    :goto_e
    invoke-static {}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->values()[Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    :try_start_f
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_8

    :goto_f
    :try_start_10
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Broadcast:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_7

    :goto_10
    :try_start_11
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Service:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_6

    :goto_11
    :try_start_12
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Var:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_5

    .line 867
    :goto_12
    invoke-static {}, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->values()[Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

    :try_start_13
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

    sget-object v1, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->Refresh:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_4

    .line 780
    :goto_13
    invoke-static {}, Lmiui/maml/data/VariableType;->values()[Lmiui/maml/data/VariableType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$data$VariableType:[I

    :try_start_14
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$data$VariableType:[I

    sget-object v1, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_3

    :goto_14
    :try_start_15
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$data$VariableType:[I

    sget-object v1, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_2

    :goto_15
    :try_start_16
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$data$VariableType:[I

    sget-object v1, Lmiui/maml/data/VariableType;->STR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_1

    :goto_16
    :try_start_17
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$data$VariableType:[I

    sget-object v1, Lmiui/maml/data/VariableType;->STR_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_0

    :goto_17
    return-void

    :catch_0
    move-exception v0

    goto :goto_17

    :catch_1
    move-exception v0

    goto :goto_16

    :catch_2
    move-exception v0

    goto :goto_15

    :catch_3
    move-exception v0

    goto :goto_14

    .line 867
    :catch_4
    move-exception v0

    goto :goto_13

    .line 977
    :catch_5
    move-exception v0

    goto :goto_12

    :catch_6
    move-exception v0

    goto :goto_11

    :catch_7
    move-exception v0

    goto :goto_10

    :catch_8
    move-exception v0

    goto :goto_f

    .line 1036
    :catch_9
    move-exception v0

    goto/16 :goto_e

    :catch_a
    move-exception v0

    goto/16 :goto_d

    :catch_b
    move-exception v0

    goto/16 :goto_c

    :catch_c
    move-exception v0

    goto/16 :goto_b

    .line 1248
    :catch_d
    move-exception v0

    goto/16 :goto_a

    :catch_e
    move-exception v0

    goto/16 :goto_9

    :catch_f
    move-exception v0

    goto/16 :goto_8

    :catch_10
    move-exception v0

    goto/16 :goto_7

    .line 1320
    :catch_11
    move-exception v0

    goto/16 :goto_6

    :catch_12
    move-exception v0

    goto/16 :goto_5

    :catch_13
    move-exception v0

    goto/16 :goto_4

    .line 1439
    :catch_14
    move-exception v0

    goto/16 :goto_3

    :catch_15
    move-exception v0

    goto/16 :goto_2

    :catch_16
    move-exception v0

    goto/16 :goto_1

    :catch_17
    move-exception v0

    goto/16 :goto_0
.end method
