.class public Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;
.super Lcom/miui/internal/variable/AbsClassFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/Android_Preference_Preference_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static final p:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton",
            "<",
            "Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private jY:Lcom/miui/internal/variable/Android_Preference_Preference_class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory$1;

    invoke-direct {v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory$1;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;->p:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/miui/internal/variable/AbsClassFactory;-><init>()V

    .line 48
    const-string v0, "Android_Preference_Preference_class"

    .line 49
    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/variable/Android_Preference_Preference_class;

    iput-object v0, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;->jY:Lcom/miui/internal/variable/Android_Preference_Preference_class;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/variable/Android_Preference_Preference_class$1;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;->p:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/miui/internal/variable/Android_Preference_Preference_class;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;->jY:Lcom/miui/internal/variable/Android_Preference_Preference_class;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;->get()Lcom/miui/internal/variable/Android_Preference_Preference_class;

    move-result-object v0

    return-object v0
.end method
