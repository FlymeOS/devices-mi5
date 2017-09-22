.class public final enum Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPassword.java"


# static fields
.field public static final enum eh:Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum ei:Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum ej:Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field private static final synthetic ek:[Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final buttonText:I

.field public final numericHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const v5, 0x7f0c0255

    const/4 v15, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 207
    new-instance v0, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v1, "Introduction"

    const v3, 0x7f0c0540

    const v4, 0x7f0c0542

    invoke-direct/range {v0 .. v5}, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->eh:Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 211
    new-instance v6, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v7, "NeedToConfirm"

    const v9, 0x7f0c0543

    const v10, 0x7f0c0545

    const v11, 0x7f0c0260

    invoke-direct/range {v6 .. v11}, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ei:Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 215
    new-instance v9, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v10, "ConfirmWrong"

    const v12, 0x7f0c0546

    const v13, 0x7f0c0547

    move v11, v15

    move v14, v5

    invoke-direct/range {v9 .. v14}, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v9, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ej:Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 205
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->eh:Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ei:Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ej:Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v15

    sput-object v0, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ek:[Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 223
    iput p3, p0, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    .line 224
    iput p4, p0, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    .line 225
    iput p5, p0, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    .line 226
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    .prologue
    .line 205
    const-class v0, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ek:[Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method
