.class public Lmiui/securityspace/SecSpaceConstants;
.super Ljava/lang/Object;
.source "SecSpaceConstants.java"


# static fields
.field public static final GRAPHITE_APPS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRAPHITE_PACKAGE_AGENT:Ljava/lang/String; = "com.securespaces.android.trustagent"

.field public static final GRAPHITE_PACKAGE_SETTINGS:Ljava/lang/String; = "com.securespaces.android.settings"

.field public static final GRAPHITE_PACKAGE_SSCM:Ljava/lang/String; = "com.securespaces.android.sscm.service"

.field public static final GRAPHITE_PACKAGE_SSM:Ljava/lang/String; = "com.securespaces.android.ssm.service"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/securityspace/SecSpaceConstants;->GRAPHITE_APPS:Ljava/util/ArrayList;

    .line 17
    sget-object v0, Lmiui/securityspace/SecSpaceConstants;->GRAPHITE_APPS:Ljava/util/ArrayList;

    const-string v1, "com.securespaces.android.ssm.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lmiui/securityspace/SecSpaceConstants;->GRAPHITE_APPS:Ljava/util/ArrayList;

    const-string v1, "com.securespaces.android.sscm.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lmiui/securityspace/SecSpaceConstants;->GRAPHITE_APPS:Ljava/util/ArrayList;

    const-string v1, "com.securespaces.android.trustagent"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lmiui/securityspace/SecSpaceConstants;->GRAPHITE_APPS:Ljava/util/ArrayList;

    const-string v1, "com.securespaces.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
